<?php

namespace App\Jobs;

use App\Mail\SendNotif;
use Illuminate\Support\Facades\Mail;

use Illuminate\Bus\Queueable;
use Illuminate\Queue\SerializesModels;
use Illuminate\Queue\InteractsWithQueue;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Foundation\Bus\Dispatchable;

class SendNotifJobs implements ShouldQueue
{
    use Dispatchable, InteractsWithQueue, Queueable, SerializesModels;
    public $posting;

    /**
     * Create a new job instance.
     *
     * @return void
     */
    public function __construct($posting)
    {
        $this->posting = $posting;
    }

    /**
     * Execute the job.
     *
     * @return void
     */
    public function handle()
    {
        Mail::to($this->posting->user->email)->send(new SendNotif($this->posting));
    }
}
