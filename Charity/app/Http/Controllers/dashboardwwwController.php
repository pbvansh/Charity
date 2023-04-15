<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use IsAdmin;
use App\setting;
use App\www;
use App\Role;
use App\User;
use App\Post;
use Auth;


class dashboardwwwController extends Controller
{
   /**
     * Create a new controller instance.
     *
     * @return void
    */
    public function __construct()
    {
        $this->middleware('auth');
        $this->middleware('admin');
    }

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        // Categores //
        $Categores = www::simplePaginate(10);
        return view('dashboard.dashboardwww.index',compact('Categores'));
    }
    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('dashboard.dashboardwww.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        // validate //
        $request->validate([

        'title' => 'required',
        'slug' => 'required',

        ]);
        // New www //
        $www = new www;
        $www->order  = $request->input('order');
        $www->title  = $request->input('title');
        $www->slug   = $request->input('slug');
        $www->color  = $request->input('color');
        $www->save();  

                return redirect()->TO('dashboard/dashboardwww')

                        ->with('success','Location created successfully.');
    }


    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $slug
     * @return \Illuminate\Http\Response
     */
    public function edit($slug)
    {
        //To Get slug www
        $www = www::where('slug', '=', $slug)->firstOrFail();
        return view('dashboard.dashboardwww.edit',compact('www'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $slug
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $slug)
    {
        //To Get www
        $request->is([

        'title' => 'required',
        'slug' => 'required',

        ]);
        //To EDIT www
        $www = www::where('slug', '=', $slug)->firstOrFail();
        $www->order  = $request->input('order');
        $www->title  = $request->input('title');
        $www->slug   = $request->input('slug');
        $www->color  = $request->input('color');
        $www->save();  

                return redirect()->TO('dashboard/dashboardwww')

                        ->with('success','Location Update successfully.');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        // www Delete
        $www = www::findOrFail($id);
        $www->delete();
        return back()->with('Delete','Location deleted successfully');
    }
}
