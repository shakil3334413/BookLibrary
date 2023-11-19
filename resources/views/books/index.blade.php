@extends('welcome') 
@section('content')
<div class="container-fluid">
    <div class="row">
        <div class="col-12">
        @if(Session::has('success'))
            <div class="alert alert-danger">{{ Session::get('success') }}</div>
        @endif
        <div class="card">
            <div class="card-header">
                <h3 class="card-title">Book List</h3>
            </div>
            <div class="card-body">
                <table id="" class="table table-bordered table-hover">
                    <thead>
                        <tr>
                            <th>Title</th>
                            <th>Author</th>
                            <th>Action</th>
                        </tr>
                    </thead>
                    <tbody>
                        @foreach ($books as $book)
                        <tr>
                                <td>{{ $book->title }}</td>
                                <td>{{ $book->author }}</td>
                                <td>
                                    <div class="btn-group">
                                        <a href="{{ route('book.view',$book->id) }}" type="button" class="btn btn-info">View</a>
                                        <a href="{{ route('book.edit',$book->id) }}" type="button" class="btn btn-warning">Edit</a>
                                        <form action="{{route('book.destroy',$book->id)}}" method="POST">
                                            @csrf
                                            @method('DELETE')
                                        <button type="submit" class="btn btn-danger">Delete</button>
                                        </form>
                                      </div>
                                </td>
                        </tr>
                        @endforeach
                    </tbody>
                    <tfoot>
                        <tr>
                            <th>Title</th>
                            <th>Author</th>
                            <th>Action</th>
                        </tr>
                    </tfoot>
                </table>
                {{ $books->links() }}
            </div>
            <!-- /.card-body -->
            </div>
        </div>
    </div>
</div>
@endsection