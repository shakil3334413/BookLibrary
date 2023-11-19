<?php

namespace App\Mail;

use App\Models\Book;
use App\Models\Rent;
use Illuminate\Bus\Queueable;
use Illuminate\Mail\Mailable;
use Illuminate\Mail\Mailables\Content;
use Illuminate\Queue\SerializesModels;
use Illuminate\Mail\Mailables\Envelope;
use Illuminate\Contracts\Queue\ShouldQueue;

class BookRentMail extends Mailable
{
    use Queueable, SerializesModels;
    public Rent $rent;
    public $book;
    public function __construct($rent,$book)
    {
        $this->rent = $rent;
        $this->book = $book;
    }

    public function envelope(): Envelope
    {
        return new Envelope(
            subject: 'Book Rent Mail',
        );
    }

    public function content(): Content
    {
        return new Content(
            view: 'mail.rentalBook',
        );
    }

    public function attachments(): array
    {
        return [];
    }
}
