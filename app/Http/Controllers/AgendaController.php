<?php

namespace App\Http\Controllers;

use App\Models\Agenda;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Log;


class AgendaController extends Controller
{
    public function index()
    {
        $agendas = Agenda::all();
        return response()->json($agendas);
    }

    public function create()
    {
        return view('agendas.create');
    }

    public function store(Request $request)
    {


        $validated = $request->validate([
            'title' => 'required|string|max:255',
            'description' => 'required|string',  // Pastikan ini ada di request
            'event_date' => 'nullable|date'
        ]);

        try {
            $agenda = Agenda::create($validated);
            return response()->json([
                'message' => 'Agenda created successfully',
                'agenda' => $agenda
            ], 201);
        } catch (\Exception $e) {
            return response()->json(['error' => 'Failed to create agenda'], 400);
        }
        
    }


    public function edit(Agenda $agenda)
    {
        return view('agendas.edit', compact('agenda'));
    }

    public function update(Request $request, Agenda $agenda)
    {


        $validated = $request->validate([
            'title' => 'required|string|max:255',
            'description' => 'required|string',
            'event_date' => 'nullable|date'
        ]);

        $agenda->update($validated);

        return response()->json([
            'message' => 'Agenda updated successfully',
            'agenda' => $agenda
        ]);
    }

    public function destroy(Agenda $agenda)
    {
        $agenda->delete();
        return redirect()->route('agendas.index')->with('success', 'Agenda deleted successfully');
    }
}
