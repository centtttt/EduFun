@extends('layout.master')

@section('content')
<div class="container py-5 mb-5">
    <h2 class="fw-bold mb-5">Our Writers:</h2>
    <div class="row justify-content-start g-5">
        @foreach($writer as $writers)
            @csrf
            <div class="col-12 col-md-4">
                <div class="text-center">
                    <a href="{{ 'writerdetail/' }}{{ $writers->id }}" style="cursor: pointer; text-decoration: none; color: black;">
                        <div class="position-relative d-inline-block mb-4">
                            <div class="rounded-circle bg-white shadow" style="width: 300px; height: 300px;">
                                <img src="{{ $writers->imageURL }}" alt="Image Writer" class="img-fluid rounded-circle shadow" style="width: 100%; height: 100%; object-fit: cover;">
                            </div>
                        </div>
                        <h5 class="fw-bold mb-3">{{ $writers->name }}</h5>
                        <p>Spesialis {{ $writers->category }}</p>
                    </a>
                </div>
            </div>
        @endforeach
    </div>
</div>
@endsection