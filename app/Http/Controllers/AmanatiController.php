<?php

namespace App\Http\Controllers;

use Illuminate\Support\Facades\View;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Facades\Session;
use Illuminate\Support\Facades\Redirect;
use Illuminate\Http\Request;
use App\Models\Amanati;
use Illuminate\Validation\Rules\Unique;

class AmanatiController extends Controller {

	/**
	 * Display a listing of the resource.
	 *
	 * @return Response
	 */
	public function index()
	{
		// get all the amanati
		$amanati = Amanati::all();

		// load the view and pass the amanati
		return View::make('amanati.index')
			->with('amanati', $amanati);
	}

	/**
	 * Show the form for creating a new resource.
	 *
	 * @return Response
	 */
	public function create()
	{
		// load the create form (app/views/amanati/create.blade.php)
		return View::make('amanati.create');
	}

	/**
	 * Store a newly created resource in storage.
	 *
	 * @return Response
	 */
	public function store(Request $request)
	{
		// validate
		// read more on validation at http://laravel.com/docs/validation
		$rules = array(
			'trackCode' => 'required',
			'price' => 'required',
			'amount' => 'required',
			'address' => 'required',
			'comment' => 'required'
		);
		$validator = Validator::make($request->all(), $rules);

		// process the login
		if ($validator->fails()) {
			return Redirect::to('amanati/create')
				->withErrors($validator);
		} else {
			// store
			$amanati = new Amanati;
			$amanati->trackCode = $request->get('trackCode');
			$amanati->price = $request->get('price');
			$amanati->amount = $request->get('amount');
			$amanati->address = $request->get('address');
			$amanati->comment = $request->get('comment');
			$amanati->save();

			// redirect
			Session::flash('message', 'Successfully created amanati!');
			return Redirect::to('amanati');
		}
	}

	/**
	 * Display the specified resource.
	 *
	 * @param  int  $id
	 * @return Response
	 */
	public function show($id)
	{
		// get the amanati
		$amanati = Amanati::find($id);

		// show the view and pass the amanati to it
		return View::make('amanati.show')
			->with('amanati', $amanati);
	}

	/**
	 * Show the form for editing the specified resource.
	 *
	 * @param  int  $id
	 * @return Response
	 */
	public function edit($id)
	{
		// get the amanati
		$amanati = Amanati::find($id);

		// show the edit form and pass the amanati
		return View::make('amanati.edit')
			->with('amanati', $amanati);
	}

	/**
	 * Update the specified resource in storage.
	 *
	 * @param  int  $id
	 * @return Response
	 */
	public function update(Request $request, $id)
	{
		// validate
		// read more on validation at http://laravel.com/docs/validation
		$rules = array(
			'trackCode' => 'required',
			'price' => 'required',
			'amount' => 'required',
			'address' => 'required',
			'comment' => 'required'
		);
		$validator = Validator::make($request->all(), $rules);

		// process the login
		if ($validator->fails()) {
			return Redirect::to('amanati/' . $id . '/edit')
				->withErrors($validator);
		} else {
			// store
			$amanati = Amanati::find($id);
			$amanati->trackCode = $request->get('trackCode');
			$amanati->price = $request->get('price');
			$amanati->amount = $request->get('amount');
			$amanati->address = $request->get('address');
			$amanati->comment = $request->get('comment');
			$amanati->save();

			// redirect
			Session::flash('message', 'Successfully updated amanati!');
			return Redirect::to('amanati');
		}
	}

	/**
	 * Remove the specified resource from storage.
	 *
	 * @param  int  $id
	 * @return Response
	 */
	public function destroy($id)
	{
		// delete
		$amanati = Amanati::find($id);
		$amanati->delete();

		// redirect
		Session::flash('message', 'Successfully deleted the amanati!');
		return Redirect::to('amanati');
	}

}