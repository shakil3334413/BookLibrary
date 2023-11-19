@extends('welcome') 
@section('content')
    <div class="container-fluid">
        <div class="row justify-content-center">
            <div class="col-md-6">
                <h3 class="h3">Search Your Book </h3>
                <form action="{{ route('books.search') }}" method="post">
                    @csrf
                    <div class="input-group input-group-md ">
                        <input type="text" class="form-control" name="title" value="{{ old('title') }}">
                        <span class="input-group-append">
                          <button type="submit" class="btn btn-info btn-flat">Go!</button>
                        </span>
                    </div>
                    @error('title')
                    <span class="text text-danger" role="alert">
                        <strong>{{ $message }}</strong>
                    </span>
                    @enderror
                </form>
            </div>  
        </div>
    </div>
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-12">
                @if(isset($books))
                <h1>Book Search Results</h1>
                    <div class="row">
                        @if(count($books) > 0)
                        @foreach($books as $book)
                        <a href="{{ route('book.create',['bookId' => $book['id']]) }}">
                            <div class="col-md-3">
                                <div class="card" style="width: 18rem;height:13rem">
                                    <div class="card-body">
                                      <h5 class="card-title">Title:{{ $book['volumeInfo']['title'] }}</h5>
                                      <p class="card-text">
                                        @if(isset($book['volumeInfo']['authors']))
                                        <p>Authors: {{ implode(', ', $book['volumeInfo']['authors']) }}</p>
                                        @endif
                                        </p>
                                    </div>
                                  </div>
                            </div>
                        </a>
                       
                        @endforeach
                @else
                    <p>No books found.</p>
                @endif 
                    </div>
                @endif  
            </div>
        </div>
    </div>
@endsection