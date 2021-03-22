<?php

namespace App\Http\Controllers;
use App\User;
use App\Models\groups;
use App\Models\assets;
use Illuminate\Support\Facades\Crypt;
use Symfony\Component\HttpFoundation\Response;
use Illuminate\Support\Facades\Validator;

use Illuminate\Http\Request;

class QuestionController2 extends Controller
{
    public function createAccount(Request $request)
    {
        $messages = [
            'required' => 'The :attribute field is required.',
            'email.required' => 'The email field is required.',
            'email.email' => 'The email needs to have a valid format.',
            'password.regex' => 'Password must contain at least 1 lower-case and capital letter, a number and symbol.'
        ];
    
          $validator=Validator::make($request->all(), [
            'name' => ['required', 'string', 'max:255'],
            'email' => ['required', 'string', 'email', 'max:255', 'unique:users'],
            'phone' =>['required'],
            'password' => ['required'],

          ], $messages);
        if($validator->fails())
        {
    
              return response()->json([
              "code"  =>  '400',
              "type"  => "invalid",
              "message"  =>  "invalid_credentials",
              "developerMessage"  => $validator->messages(),
              ], 400);
        }
        else {

            $user = User::create([
                'name' => $request->name,
                'email' => $request->email,
                'phone' => $request->phone,
                 'password' => bcrypt($request->password),
                 'ip_address' =>  request()->ip(),
              ]);
              return response()->json(['message' => 'Created Successfully','code'=>Response::HTTP_CREATED],Response::HTTP_CREATED);



        }

    }

    public function createGroup(Request $request)
    {
          
          $validator=Validator::make($request->all(), [
            'name' => ['required', 'string', 'max:255'],
            'descriptions' => ['required', 'string'],

          ]);
        if($validator->fails())
        {
    
              return response()->json([
              "code"  =>  '400',
              "type"  => "invalid",
              "message"  =>  "invalid_credentials",
              "developerMessage"  => $validator->messages(),
              ], 400);
        }
        else {

            $user = groups::create([
                'name' => $request->name,
                'descriptions' => $request->descriptions,
              ]);
              return response()->json(['message' => 'Created Successfully','code'=>Response::HTTP_CREATED],Response::HTTP_CREATED);



        }
    }

    public function getAllGroups()
    {
        $groups=groups::all();
        return response()->json(['data' =>$groups,'code'=>Response::HTTP_OK],Response::HTTP_OK);
    }

    public function getAllindividuals()
    {
        $User=User::all();
        return response()->json(['data' =>$User,'code'=>Response::HTTP_OK],Response::HTTP_OK);
    }

    public function getAllAssets()
    {
        $assets=assets::all();
        return response()->json(['data' =>$assets,'code'=>Response::HTTP_OK],Response::HTTP_OK);
    }


    public function createAssets(Request $request)
    {
          
          $validator=Validator::make($request->all(), [
            'name' => ['required', 'string', 'max:255'],
            'descriptions' => ['required', 'string'],

          ]);
        if($validator->fails())
        {
    
              return response()->json([
              "code"  =>  '400',
              "type"  => "invalid",
              "message"  =>  "invalid_credentials",
              "developerMessage"  => $validator->messages(),
              ], 400);
        }
        else {

            $user = assets::create([
                'name' => $request->name,
                'descriptions' => $request->descriptions,
              ]);
              return response()->json(['message' => 'Created Successfully','code'=>Response::HTTP_CREATED],Response::HTTP_CREATED);



        }
    }

    public function assignAssetsToUser(Request $request)
    {
        $validator=Validator::make($request->all(), [
            'user_id' => ['required', 'numeric'],
            'assets_id' => ['required', 'numeric'],

          ]);
        if($validator->fails())
        {
    
              return response()->json([
              "code"  =>  '400',
              "type"  => "invalid",
              "message"  =>  "invalid_credentials",
              "developerMessage"  => $validator->messages(),
              ], 400);
        }
        else {
         
      $user=User::where('id', $request->get('user_id'))->first();
      if($user){
        User::where('id', $request->get('user_id'))->update([
            "assets_id" =>$request->get('assets_id')
   ]);
          return response()->json(['message' => 'Assets Assign To '.$user->name.' Successfully','code'=>Response::HTTP_CREATED],Response::HTTP_CREATED);

    } 
    else { 
        return response()->json(['error' =>'Recored not found','code'=>Response::HTTP_UNPROCESSABLE_ENTITY],Response::HTTP_UNPROCESSABLE_ENTITY);


        }
    }
    }
}
