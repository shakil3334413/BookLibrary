@extends('welcome') 
@section('content')
<div class="container-fluid">
    <div class="row justify-content-center">
        <div class="col-md-6">
            <form action="{{ route('book.update',$book->id) }}" method="post">
                @method('PUT')
                @csrf
                <div class="form-group">
                    <label for="exampleInputEmail1">Title</label>
                    <input type="text" name="title" class="form-control" value="{{ $book->title }}">
                    @error('title')
                    <span class="text text-danger" role="alert">
                        <strong>{{ $message }}</strong>
                    </span>
                    @enderror
                </div>
                <div class="form-group">
                    <label for="exampleInputEmail1">Author</label>
                    <input type="text" name="author" class="form-control" value="{{ $book->author }}">
                    @error('author')
                    <span class="text text-danger" role="alert">
                        <strong>{{ $message }}</strong>
                    </span>
                    @enderror
                </div>
                <div class="form-group">
                    <label for="exampleInputEmail1">Page Number</label>
                    <input type="number" name="page_count" class="form-control" value="{{ $book->page_count }}">
                    @error('page_count')
                    <span class="text text-danger" role="alert">
                        <strong>{{ $message }}</strong>
                    </span>
                    @enderror
                </div>
                <div class="form-group">
                    <label for="exampleInputEmail1">Copy</label>
                    <input type="number" name="quantity" class="form-control" value="{{ $book->quantity }}">
                    @error('quantity')
                    <span class="text text-danger" role="alert">
                        <strong>{{ $message }}</strong>
                    </span>
                    @enderror
                </div>
                <div class="form-group">
                    <label for="exampleInputEmail1">Description</label>
                    <textarea class="form-control"  name="description" rows="3" placeholder="Enter ...">{{ $book->description }}</textarea>
                    @error('description')
                    <span class="text text-danger" role="alert">
                        <strong>{{ $message }}</strong>
                    </span>
                    @enderror
                </div>
                <button class="btn btn-info" type="submit">Update Book</button>
            </form>
        </div>  
    </div>
</div>
@endsection