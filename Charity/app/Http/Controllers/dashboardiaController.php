<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use IsAdmin;
use App\setting;
use App\ia;
use App\Role;
use App\User;
use App\Post;
use Auth;


class dashboardiaController extends Controller
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
        $Categores = ia::simplePaginate(10);
        return view('dashboard.dashboardia.index',compact('Categores'));
    }
    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('dashboard.dashboardia.create');
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
        // New ia //
        $ia = new ia;
        $ia->order  = $request->input('order');
        $ia->title  = $request->input('title');
        $ia->slug   = $request->input('slug');
        $ia->color  = $request->input('color');
        $ia->save();  

                return redirect()->TO('dashboard/dashboardia')

                        ->with('success','Inovation Area created successfully.');
    }


    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $slug
     * @return \Illuminate\Http\Response
     */
    public function edit($slug)
    {
        //To Get slug ia
        $ia = ia::where('slug', '=', $slug)->firstOrFail();
        return view('dashboard.dashboardia.edit',compact('ia'));
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
        //To Get ia
        $request->is([

        'title' => 'required',
        'slug' => 'required',

        ]);
        //To EDIT ia
        $ia = ia::where('slug', '=', $slug)->firstOrFail();
        $ia->order  = $request->input('order');
        $ia->title  = $request->input('title');
        $ia->slug   = $request->input('slug');
        $ia->color  = $request->input('color');
        $ia->save();  

                return redirect()->TO('dashboard/dashboardia')

                        ->with('success','Inovation Area Update successfully.');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        // ia Delete
        $ia = ia::findOrFail($id);
        $ia->delete();
        return back()->with('Delete','Inovation Area deleted successfully');
    }
}
