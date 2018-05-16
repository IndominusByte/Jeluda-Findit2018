@if ($paginator->hasPages())
    <ul class="pagination">
        {{-- Previous Page Link --}}
        @if ($paginator->onFirstPage())
            <li class="page-item disabled"><span class="page-link">
                        <span aria-hidden="true">&laquo;</span>
        <span class="sr-only">Previous</span>

                </span></li>
        @else
            <li class="page-item"><a class="page-link" href="{{ $paginator->previousPageUrl() }}" rel="prev">
                        <span aria-hidden="true">&laquo;</span>
        <span class="sr-only">Previous</span>

                </a></li>
        @endif

        {{-- Pagination Elements --}}
        @foreach ($elements as $element)
            {{-- "Three Dots" Separator --}}
            @if (is_string($element))
                <li class="page-item disabled"><span class="page-link">{{ $element }}</span></li>
            @endif

            {{-- Array Of Links --}}
            @if (is_array($element))
                @foreach ($element as $page => $url)
         @if ($paginator->currentPage() > 3 && $page === 3)
            <li class="page-item disabled"><span class="page-link">...</span></li>
        @endif

        {{--  Show active page else show the first and last two pages from current page.  --}}
        @if ($page == $paginator->currentPage())
            <li class="page-item active"><span class="page-link">{{ $page }}</span></li>
        @elseif ($page === $paginator->currentPage() + 1 || $page === $paginator->currentPage() + 3 || $page === $paginator->currentPage() - 1 || $page === $paginator->currentPage() - 2 || $page === $paginator->lastPage() || $page === 1)
            <li class="page-item"><a class="page-link" href="{{ $url }}">{{ $page }}</a></li>
        @endif

        {{--  Use three dots when current page is awasy from end.  --}}
        @if ($paginator->currentPage() < $paginator->count() - 3 && $page === $paginator->count() - 3 && $page !== 2)
            <li class="page-item disabled"><span class="page-link">...</span></li>
        @endif
          
                @endforeach
            @endif
        @endforeach

        {{-- Next Page Link --}}
        @if ($paginator->hasMorePages())
            <li class="page-item"><a class="page-link" href="{{ $paginator->nextPageUrl() }}" rel="next">
                        <span aria-hidden="true">&raquo;</span>
        <span class="sr-only">Next</span>

                </a></li>
        @else
            <li class="page-item disabled"><span class="page-link">
                        <span aria-hidden="true">&raquo;</span>
        <span class="sr-only">Next</span>

                </span></li>
        @endif
    </ul>
@endif


