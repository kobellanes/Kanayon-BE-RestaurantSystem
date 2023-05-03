<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Account;

class AccountController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $accounts = Account::all();
        return response()->json($accounts);
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
        $accounts = Account::where('isEmail', $request->isEmail)->get();

        if(count($accounts)<=0){
            $account = new Account;

            $account->isFirst = $request->isFirst;
            $account->isLast = $request->isLast;
            $account->isEmail = $request->isEmail;
            $account->isPassword = $request->isPassword;
            $account->isGcash = $request->isGcash;
    
            $account->save();
    
            $message =(object)[
                "prompt"=>"1",
                "message"=>"You successfully created a new account!"
            ];
            return response()->json($message);
        }else{
            $message =(object)[
                "status"=>"0",
                "message"=>"Email already exists! Please create a unique one!"
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
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}
