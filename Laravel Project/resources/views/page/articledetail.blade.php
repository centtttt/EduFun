@extends('layout.master')

@section('content')
@foreach ($article as $art)
    @if ($art->id == $id)
        <div class="m-4 mb-0">
            <h1 class="fw-bold">{{ $art->category }}</h1>
        </div>
        <div class="container-fluid mb-4">
            <div class="card border-0 shadow-sm p-4">
                <div class="mb-1">
                    <img src="{{ $art->imageURL }}" alt="Article Image" class="img-fluid" style="width: 100%; max-height: 400px; object-fit: cover; border-radius: 30px">
                </div>
                @foreach ($writer as $writers)
                    @if ($writers->id == $art->writer_id)
                        <p class="mb-4">{{ date('d F Y', strtotime($art->published_date)) }} | by: {{ explode(' ', $writers->name)[0] }}</p>
                    @endif
                @endforeach
                <p class="">
                    {{ $art->content }}
                </p>
            </div>
        </div>
    @endif
@endforeach
@endsection