<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Menu;

class MenuController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $menus = Menu::all();
        return response()->json($menus);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $menus = Menu::where('menu_name', $request->menu_name)->get();

        if(count($menus)<=0){
            $menu = new Menu;

            $menu->menu_pic = $request->menu_pic;
            $menu->menu_description = $request->menu_description;
            $menu->menu_name = $request->menu_name;
            $menu->menu_price = $request->menu_price;
            $menu->menu_quantity = $request->menu_quantity;
    
            $menu->save();
    
            $message =(object)[
                "prompt"=>"1",
                "message"=>"You successfully created a new menu!"
            ];
            return response()->json($message);
        }else{
            $message =(object)[
                "status"=>"0",
                "message"=>"Menu already exists! Remove, add or delete the menu if possible!"
            ];
            return response()->json($message);
        }
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $menu = Menu::where('id',$id)->first();

        $menu->menu_name = $request->menu_name;
        $menu->menu_description = $request->menu_description;
        $menu->menu_price = $request->menu_price;
        $menu->menu_quantity = $request->menu_quantity;
        $menu->menu_isSold = $request->menu_isSold;

        $menu->save();

        $message =(object)[
            "status"=>"1",
            "message"=>"You successfully updated a menu."
        ];
        return response()->json($message);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $menu = Menu::where('id',$id)->first();
        $menu->delete();
        $message =(object)[
            "status"=>"1",
            "message"=>"You successfully deleted a menu."
        ];
        return response()->json($message);
    }
}
