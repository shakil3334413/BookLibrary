<?php

namespace App\Console\Commands;

use App\Models\Rent;
use Illuminate\Console\Command;
use Illuminate\Support\Facades\Mail;

class SendBookReturnReminders extends Command
{
   
    protected $signature = 'app:send-book-return-reminders';
    protected $description = 'Send daily book return reminders';

    public function handle()
    {
        $rents = Rent::whereDate('rent_date', '<', now()->subDay())
        ->whereNull('return_date')
        ->where('status',0)
        ->get();

        $rentalsByPerson = $rents->groupBy('email');
        
        foreach ($rentalsByPerson as $personId => $rentals) {
            $email = $rentals->email;
            $name = $rentals->name;
            $bookDetails = '';
            foreach ($rentals as $rental) {
                $bookDetails .= "- {$rental->books->title}\n";
            }
            Mail::raw("Dear $name,\n\nYou have the following overdue books:\n\n$bookDetails\n\nPlease return them as soon as possible. Thank you!", function ($message) use ($email) {
                $message->to($email)
                        ->subject('Book Return Reminder');
            });
        }

        $this->info('Book return reminders sent successfully.');
    }

}
