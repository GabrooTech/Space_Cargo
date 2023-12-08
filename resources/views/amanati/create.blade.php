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
    <h1>Create a Parcel</h1>
</div>
<div class="login_container">
    <div class="form_box">
	    {{ Form::open(array('url' => 'amanati')) }}
        <div class="inputbox">
			{{ Form::label('Track Code', 'Track Code') }}
			{{ Form::text('trackCode', old('trackCode'), array('class' => 'login_input')) }}
			<i class='bx bx-code'></i>
			@if($errors->has('trackCode'))
				<!-- if there are creation errors, they will show here similarly to other places-->
				<div class="error">{{ $errors->first('trackCode') }}</div>
			@endif
        </div>
        <div class="inputbox">
			{{ Form::label('Price', 'Price') }}
			{{ Form::number('price', old('price'), array('class' => 'login_input')) }}
			<i class='bx bx-dollar' ></i>
			@if($errors->has('price'))
				<div class="error">{{ $errors->first('price') }}</div>
			@endif
        </div>
        <div class="inputbox">
			{{ Form::label('Amount', 'Amount') }}
			{{ Form::number('amount', old('amount'), array('class' => 'login_input')) }}
			<i class='bx bx-objects-horizontal-left' ></i>
			@if($errors->has('amount'))
				<div class="error">{{ $errors->first('amount') }}</div>
			@endif
        </div>
        <div class="inputbox">
			{{ Form::label('Address', 'Address') }}
			{{ Form::text('address', old('address'), array('class' => 'login_input')) }}
			<i class='bx bx-home-alt' ></i>
			@if($errors->has('address'))
				<div class="error">{{ $errors->first('address') }}</div>
			@endif
        </div>
        <div class="inputbox">
			{{ Form::label('Comment', 'Comment') }}
			{{ Form::text('comment', old('comment'), array('class' => 'login_input')) }}
			<i class='bx bx-chat' ></i>
			@if($errors->has('comment'))
				<div class="error">{{ $errors->first('comment') }}</div>
			@endif
        </div>
        {{ Form::submit('Create the Parcel', array('class' => 'submit_button')) }}
        {{ Form::close() }}
	</div>
</div>
<script src="{{ url('/js/additional.js')}}"></script>
</body>
</html>