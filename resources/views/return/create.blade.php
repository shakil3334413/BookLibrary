@extends('welcome') 
@section('content')
    <div class="container-fluid">
        <div class="row justify-content-center">
            <div class="col-md-6">
                <h3>Return Book History Search</h3>
                <hr>
                <form action="{{ route('rents.search') }}" method="post">
                    @csrf
                    <div class="input-group input-group-md ">
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
                
                                <span class="input-group-append">
                                  <button style="margin-top: 0px" type="submit" class="btn btn-info btn-flat">Rent History</button>
                                </span>
                    
                        
                       
                    </div>
                </form>
            </div>  
        </div>
    </div>
    <div class="container-fluid mt-4">
        <div class="row">
            <div class="col-md-12">
                @if (isset($rents) && count($rents) > 0)
                <h3>Active Rent History</h3>
                <table class="table table-bordered table-hover">
                    <thead>
                        <tr>
                            <th>Book Title</th>
                            <th>Renter Name</th>
                            <th>Contact Number</th>
                            <th>Email</th>
                            <th>Action</th>
                        </tr>
                    </thead>
                    <tbody>
                        @foreach ($rents as $rent)
                            <tr>
                                <td>{{ $rent->books->title }}</td>
                                <td>{{ $rent->name }}</td>
                                <td>{{ $rent->phone }}</td>
                                <td>{{ $rent->email }}</td>
                                <td>
                                   <a href="{{ route('rents.returnProcess',$rent->id) }}" class="btn btn-info">Return</a>
                                </td>
                            </tr>
                        @endforeach
                    </tbody>
                </table>
                @else
                <h1>No Rent History In this Boook</h1>
            @endif
            </div>
        </div>
    </div>
@endsection