@extends('welcome') 
@section('content')
<div class="container-fluid">
    <div class="row justify-content-center">
        <div class="col-md-6">
            @if(Session::has('error'))
            <div class="alert alert-danger">{{ Session::get('error') }}</div>
            @endif
            <form action="{{ route('rents.store') }}" method="post">
                @csrf
                <div class="form-group">
                    <label>Book Select</label>
                    <select class="custom-select" name="book_id">
                        @foreach ($books as $book)
                            <option value="{{ $book->id }}">{{ $book->title }}</option>
                        @endforeach
                    </select>
                    @error('book_id')
                    <span class="text text-danger" role="alert">
                        <strong>{{ $message }}</strong>
                    </span>
                    @enderror
                </div>
                <div class="form-group">
                    <label for="exampleInputEmail1">Name</label>
                    <input type="text" placeholder="Customer Name" name="name" class="form-control" value="{{ old('name') }}">
                    @error('name')
                    <span class="text text-danger" role="alert">
                        <strong>{{ $message }}</strong>
                    </span>
                    @enderror
                </div>
                <div class="form-group">
                    <label for="exampleInputEmail1">Email</label>
                    <input type="email" placeholder="Customer Email" name="email" class="form-control" value="{{ old('email') }}">
                    @error('email')
                    <span class="text text-danger" role="alert">
                        <strong>{{ $message }}</strong>
                    </span>
                    @enderror
                </div>
                <div class="form-group">
                    <label for="exampleInputEmail1">Contact Number</label>
                    <input type="text" placeholder="Contact Number" name="phone" class="form-control" value="{{ old('phone') }}">
                    @error('phone')
                    <span class="text text-danger" role="alert">
                        <strong>{{ $message }}</strong>
                    </span>
                    @enderror
                </div>
                <div class="form-group">
                    <label for="exampleInputEmail1">Copy</label>
                    <input type="number" placeholder="Number of book copy" name="quantity" class="form-control" value="{{ old('quantity') }}">
                    @error('quantity')
                    <span class="text text-danger" role="alert">
                        <strong>{{ $message }}</strong>
                    </span>
                    @enderror
                </div>
                <div class="form-group">
                    <label for="exampleInputEmail1">Address</label>
                    <textarea class="form-control"  name="address" rows="3" placeholder="Enter Your Address">{{ old('address') }}</textarea>
                    @error('address')
                    <span class="text text-danger" role="alert">
                        <strong>{{ $message }}</strong>
                    </span>
                    @enderror
                </div>
                <button class="btn btn-info" type="submit">Rent Book</button>
            </form>
        </div>  
    </div>
</div>
@endsection