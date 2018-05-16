@component('mail::layout')
    {{-- Header --}}
    @slot('header')
        @component('mail::header', ['url' => config('app.url')])
            <!-- header here -->
    Jeluda
        @endcomponent
    @endslot
            
    {{-- Body --}}
    <!-- Body here -->
<b>Halo!</b><br>
jika anda lupa password atau berharap untuk menggantinya gunakan link berikut
{{-- Action Button --}}
@isset($actionText)
<?php   
    switch ($level) {
        case 'success':
            $color = 'green';
            break;
        case 'error':
            $color = 'red';
            break;
        default:
            $color = 'blue';
    }   
?>          
@component('mail::button', ['url' => $actionUrl, 'color' => $color])
{{ $actionText }}   
@endcomponent
@endisset           
Jika masih ada masalah bisa hubungi layanan kami <br>
Tertanda, <br><br>      
Jeluda                      
    {{-- Subcopy --}}           
    @slot('subcopy')            
        @component('mail::subcopy') 
            <!-- subcopy here -->       
jika bukan anda yang memintanya anda dapat menghiraukan pesan ini hanya orang yang memiliki hak akses ke email ini yang dapat mengatur ulang password anda
        @endcomponent                   
    @endslot                        
                                
                            
    {{-- Footer --}}    
    @slot('footer') 
        @component('mail::footer')
2018 Jeluda. copy right
        @endcomponent
    @endslot

@endcomponent
