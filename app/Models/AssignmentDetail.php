<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class AssignmentDetail extends Model
{
    use HasFactory;

    protected $fillable = ['course_id', 'assignment_id','type', 'lang'];

    public function acknowledgement()
    {
        return $this->belongsTo('App\Models\AcknowledgmentForms', 'assignment_id');
    }

    public function video()
    {
        return $this->belongsTo('App\Models\Assignment','assignment_id');
    }

    public function question()
    {
        return $this->belongsTo('App\Models\Question', 'assignment_id');
    }
}
