<?php

namespace App\Mail;

use App\Models\Rent;
use Illuminate\Bus\Queueable;
use Illuminate\Mail\Mailable;
use Illuminate\Mail\Mailables\Content;
use Illuminate\Queue\SerializesModels;
use Illuminate\Mail\Mailables\Envelope;
use Illuminate\Contracts\Queue\ShouldQueue;

class BookReturnMail extends Mailable
{
    use Queueable, SerializesModels;

    public Rent $rent;
    public function __construct($rent)
    {
        $this->rent = $rent;
    }

    /**
     * Get the message envelope.
     */
    public function envelope(): Envelope
    {
        return new Envelope(
            subject: 'Book Return Mail',
        );
    }
    public function content(): Content
    {
        return new Content(
            view: 'mail.returnBook',
        );
    }

    /**
     * Get the attachments for the message.
     *
     * @return array<int, \Illuminate\Mail\Mailables\Attachment>
     */
    public function attachments(): array
    {
        return [];
    }
}
