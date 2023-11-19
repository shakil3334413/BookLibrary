@extends('welcome') 
@section('content')
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-6">
                @if(isset($book))
                <div class="card" style="width: 18rem;">
                    @if(isset($book->thumbnail))
                    <img src="{{$book->thumbnail}}" class="card-img-top" alt="{{ $book->title }}">
                    @else
                    <img src="{{asset('assets/img/book.jpg')}}" class="card-img-top" alt="{{ $book->title }}">
                    @endif
                    
                    <div class="card-body">
                      <h5 class="card-title">Title: {{ $book->title }}</h5>
                      <h5 class="card-title">Author: {{ $book->author }}</h5>
                      <p class="card-text">Description: {{ $book->description }}</p>
                    </div>
                    <ul class="list-group list-group-flush">
                    @if(isset($book->quantity))
                      <li class="list-group-item">Copy: {{ $book->quantity }}</li>
                      @endif
                      @if(isset($book->revision_number))
                      <li class="list-group-item">Revision Number: {{ $book->revision_number }}</li>
                      @endif
                    </ul>
                  </div>
                @endif  
            </div>
        </div>
    </div>
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-12">
                @if(isset($latestRents))
                <h1>Latest Book Rent</h1>
                    <div class="row">
                        @if(count($latestRents) > 0)
                        @foreach($latestRents as $latestRent)
                            <div class="col-md-3">
                                <div class="card" style="width: 18rem;height:15rem">
                                    <div class="card-body">
                                      <h5 class="card-title">Name: {{ $latestRent->name }} </h5>
                                      <h5 class="card-title">Contact: {{ $latestRent->phone }} </h5>
                                      <p class="card-text">
                                        Number Of Copy Rent: {{ $latestRent->copy }} 
                                      </p>
                                    </div>
                                  </div>
                            </div>
                       
                        @endforeach
                @else
                    <p>No Book Rent found.</p>
                @endif 
                    </div>
                @endif  
            </div>
        </div>
    </div>
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-12">
                @if(isset($allRents))
                <h1>All Book Rent</h1>
                    <div class="row">
                        @if(count($allRents) > 0)
                        @foreach($allRents as $allRent)
                            <div class="col-md-3">
                                <div class="card" style="width: 18rem;height:15rem">
                                    <div class="card-body">
                                      <h5 class="card-title">Name: {{ $allRent->name }} </h5>
                                      <h5 class="card-title">Contact: {{ $allRent->phone }} </h5>
                                      <p class="card-text">
                                        Number Of Copy Rent: {{ $allRent->copy }} 
                                      </p>
                                    </div>
                                  </div>
                            </div>
                       
                        @endforeach
                @else
                    <p>No Book Rent found.</p>
                @endif 
                    </div>
                @endif  
            </div>
        </div>
    </div>
@endsection