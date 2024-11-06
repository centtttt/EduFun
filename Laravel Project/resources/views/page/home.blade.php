@extends('layout.master')

@section('content')
<img src="{{ asset('/Images/images1.png') }}" alt="error" class="img-fluid" style="width: 100%; height: auto;">
<div class="container-fluid mt-4 mb-4">
    @foreach ($article as $art)
        <div class="card border-0 d-flex flex-row p-4">
            <div class="flex-shrink-0" style="width: 30rem; height: 15rem;">
                <img src="{{ asset($art->imageURL) }}" alt="Article Image" class="img-fluid" style="border-radius: 30px;">
            </div>
            <div class="ms-3">
                <h2 class="fw-bold mb-1 mt-2">{{ $art->title }}</h2>
                    @foreach ($writer as $writers)
                        @if ($writers->id == $art->writer_id)
                            <p class="mb-2 small">{{ date('d F Y', strtotime($art->published_date)) }} | by: {{explode(' ', $writers->name)[0]}}</p>
                        @endif
                    @endforeach
                <p class="mb-3">{{ Str::words($art->content, 70) }}</p>
                <div class="mt-auto text-end">
                    <a href="/user/article/{{ $art->id }}" class="btn btn-dark rounded-pill px-5 py-2 text-white">read more...</a>
                </div>
            </div>
        </div>
    @endforeach
</div>
@endsection