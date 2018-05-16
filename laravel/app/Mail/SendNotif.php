<?php

namespace App\Mail;

use Illuminate\Bus\Queueable;
use Illuminate\Mail\Mailable;
use Illuminate\Queue\SerializesModels;
use Illuminate\Contracts\Queue\ShouldQueue;

class SendNotif extends Mailable
{
    use Queueable, SerializesModels;
    public $posting;
    /**
     * Create a new message instance.
     *
     * @return void
     */
    public function __construct($posting)
    {
        $this->posting = $posting;
    }

    /**
     * Build the message.
     *
     * @return $this
     */
    public function build()
    {
        return $this->view('email.notif');
    }
}
