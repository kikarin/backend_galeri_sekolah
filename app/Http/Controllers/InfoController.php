<?php

namespace App\Http\Controllers;

use App\Models\Info;
use Illuminate\Http\Request;

class InfoController extends Controller
{
    public function index()
    {
        $infos = Info::all();
        return response()->json($infos); 
    }

    public function create()
    {
        return view('infos.create');
    }

    public function store(Request $request)
    {
        Info::create($request->all());
        return redirect()->route('infos.index')->with('success', 'Info posted successfully');
    }

    public function edit(Info $info)
    {
        return view('infos.edit', compact('info'));
    }

    public function update(Request $request, Info $info)
    {
        $info->update($request->all());
        return redirect()->route('infos.index')->with('success', 'Info updated successfully');
    }

    public function destroy(Info $info)
    {
        $info->delete();
        return redirect()->route('infos.index')->with('success', 'Info deleted successfully');
    }
}

