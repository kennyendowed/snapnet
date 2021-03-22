<?php

namespace App\Http\Controllers;
use App\Models\countries;
use App\Models\states;
use App\Models\cities;
use Symfony\Component\HttpFoundation\Response;

use Illuminate\Http\Request;

class QuestionController1 extends Controller
{
    public function getcountry()
    {
        $country=countries::all();
        return response()->json(['data' =>$country,'code'=>Response::HTTP_OK],Response::HTTP_OK);
    }

    public function getallstateCountry($id)
    {
        $state=states::where('country_id','=',$id)->get();
        return response()->json(['data' =>$state,'code'=>Response::HTTP_OK],Response::HTTP_OK);
    }

    public function getallstateCity($id)
    {
        $state=cities::where('state_id','=',$id)->get();
        return response()->json(['data' =>$state,'code'=>Response::HTTP_OK],Response::HTTP_OK);
        
    }
    public function getallCountrydetails($id)
    {
        $data['country']=countries::where('id','=',$id)->get();
        if ( $data['country']) {
        $data['state']=states::where('country_id','=',$id)->get();
        return response()->json(['data' =>$data,'code'=>Response::HTTP_OK],Response::HTTP_OK);
    } 
    else {
       return response()->json(['error' =>'Recored not found','code'=>Response::HTTP_UNPROCESSABLE_ENTITY],Response::HTTP_UNPROCESSABLE_ENTITY);
    }  
    }

    public function getallStatedetails($id)
    {
        
        $data['state']=states::where('id','=',$id)->first();
        if ( $data['state']) {
        $data['city']=cities::where('state_id','=',$id)->get();
        $data['country']=countries::where('id','=',$data['state']->country_id)->first();
        return response()->json(['data' =>$data,'code'=>Response::HTTP_OK],Response::HTTP_OK);
    } 
    else {
       return response()->json(['error' =>'Recored not found','code'=>Response::HTTP_UNPROCESSABLE_ENTITY],Response::HTTP_UNPROCESSABLE_ENTITY);
    }  
    }

    public function getallCitydetails($id)
    {
        
        $data['city']=cities::where('id','=',$id)->first();
        if ( $data['city']) {
            $data['state']=states::where('id','=',$data['city']->state_id)->first();
            $data['country']=countries::where('id','=',$data['state']->country_id)->first();
           return response()->json(['data' =>$data,'code'=>Response::HTTP_OK],Response::HTTP_OK);
         } 
         else {
            return response()->json(['error' =>'Recored not found','code'=>Response::HTTP_UNPROCESSABLE_ENTITY],Response::HTTP_UNPROCESSABLE_ENTITY);
         }  
   
    }
}
