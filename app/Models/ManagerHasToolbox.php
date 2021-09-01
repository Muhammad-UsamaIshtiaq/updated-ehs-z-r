<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class ManagerHasToolbox extends Model
{
    use HasFactory;

    protected $table="manager_has_toolbox";
    public $timestamps=false;

    public function signatures()
    {
        return $this->hasMany('App\Models\Admin\ToolboxSignature', 'file_id', 'toolbox_id');
    }
}
