@extends('welcome') 
@section('content')
    <div class="container-fluid mt-5" style="height: 500px">
        <div class="row justify-content-center">
            <div class="col-md-6">
                <h2><strong>Title:</strong> {{ $bookDetails['volumeInfo']['title'] }}</h2>
                <form action="{{ route('book.store') }}" method="post">
                    @csrf
                    <input type="hidden" name="book_id" value="{{ $bookDetails['id'] }}">
                    <div class="form-group">
                        <label for="exampleInputEmail1">Book Copy</label>
                        <input type="number" name="quantity" class="form-control" id="exampleInputEmail1" placeholder="Enter Book Copy" value="{{ old('quantity') }}">
                        @error('quantity')
                    <span class="text text-danger" role="alert">
                        <strong>{{ $message }}</strong>
                    </span>
                    @enderror
                    </div>
                    <button class="btn btn-info" type="submit">Add Book</button>
                </form>          
            </div>
        </div>
    </div>
@endsection