<!DOCTYPE html>
<html>
<head>
	<title>Space Cargo Task</title>
	<!-- <link rel="stylesheet" href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css"> -->
	<meta name='viewport' content='width=device-width, initial-scale=1.0'>
	<link rel='stylesheet' type='text/css' media='screen' href="{{ url('/css/additional.css')}}">
    <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
</head>
<body>
<div class="container">
    <header class="header">
        <ul class="nav_ul">
            <li><a href="{{ URL::to('amanati') }}"><i class='bx bx-home'></i></a></li>
            <li><a href="{{ URL::to('amanati') }}"><i class='bx bx-package' ></i></a></li>
            <li><a href="{{ URL::to('amanati/create') }}"><i class='bx bx-plus-circle' ></i></a></li>
            <div id="marker"></div>
        </ul> 
    </header>
	<h1 class="parcels">Parcels</h1>
<!-- will be used to show any messages -->
@if (Session::has('message'))
	<div class="alert">{{ Session::get('message') }}</div>
@endif
<table class="main_table">
	<thead>
		<tr class="talbe_name">
			<td class="red">ID</td>
			<td>Track Code</td>
			<td>Price</td>
			<td>Amount</td>
			<td>Address</td>
			<td>Comment</td>
			<td>Actions</td>
		</tr>
	</thead>
	<tbody>
	@foreach($amanati as $key => $value)
		<tr class="info_output">
			<td>{{ $value->id }}</td>
			<td>{{ $value->trackCode}}</td>
			<td>{{ $value->price }}</td>
			<td>{{ $value->amount }}</td>
			<td>{{ $value->address}}</td>
			<td>{{ $value->comment}}</td>
			<!-- we will also add show, edit, and delete buttons -->
			<td class="actions">
				<!-- delete the amanati (uses the destroy method DESTROY /amanati/{id} -->
				<!-- we will add this later since its a little more complicated than the first two buttons -->
				{{ Form::open(array('url' => 'amanati/' . $value->id, 'class' => 'pull-right')) }}
					{{ Form::hidden('_method', 'DELETE') }}
					{{ Form::submit('Delete', array('class' => 'delete_button')) }}
				{{ Form::close() }}
				<!-- show the amanati (uses the show method foundს at GET /amanati/{id} -->
				    <!-- <a class="show_button" href="{{ URL::to('amanati/' . $value->id) }}">Show</a> -->
				<!-- edit this amanati (uses the edit method found at GET /amanati/{id}/edit -->
				    <a class="edit_button" href="{{ URL::to('amanati/' . $value->id . '/edit') }}">Edit</a>
			</td>
		</tr>
	@endforeach
	</tbody>
</table>
</div>
<script src="{{ url('/js/additional.js')}}"></script>
</body>
</html>