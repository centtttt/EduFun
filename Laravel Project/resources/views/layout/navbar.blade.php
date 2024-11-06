<nav class="navbar navbar-expand-sm navbar-dark bg-white shadow sticky-top" style="height: 6rem;">
    <a href="{{ route('user.home') }}" class="navbar-brand mx-5">
        <img src="{{ asset('/Images/edufunlogo.png') }}" alt="logo" class="img-fluid" style="height: 10rem;">
    </a>
    <ul class="navbar-nav ms-auto gap-5 fw-bold mx-5 align-items-center">
        <li class="nav-item">
            <a class="nav-link text-dark" href="{{ route('user.home') }}">Home</a>
        </li>
        <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle text-dark" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                Category
            </a>
            <div class="dropdown-menu">
                <a class="dropdown-item text-dark fw-bold" href="{{ route('user.datascience') }}">Data Science</a>
                <a class="dropdown-item text-dark fw-bold" href="{{ route('user.networksecurity') }}">Network Security</a>
            </div>
        </li>
        <li class="nav-item">
            <a class="nav-link text-dark" href="{{ route('user.writers') }}">Writers</a>
        </li>
        <li class="nav-item">
            <a class="nav-link text-dark" href="{{ route('user.aboutus') }}">About Us</a>
        </li>
        <li class="nav-item">
            <a class="nav-link text-dark" href="{{ route('user.popular') }}">Popular</a>
        </li>
    </ul>
</nav>