<?php

use App\Models\Field;
use Illuminate\Database\Seeder;


class FieldsSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        Field::truncate();

        Field::insert([
            ['field_type' => "input"],
            ['field_type' => "textarea"],
            ['field_type' => "select"],
        ]);
    }
}
