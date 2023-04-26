<?php


namespace App\Http\Controllers;

use App\Models\MenuItem;
use Illuminate\Routing\Controller as BaseController;
use Illuminate\Support\Facades\DB;
class MenuController extends BaseController
{
    /* TODO: complete getMenuItems so that it returns a nested menu structure from the database
    Requirements
    - the eloquent expressions should result in EXACTLY one SQL query no matter the nesting level or the amount of menu items.
    - post process your results in PHP
    - it should work for infinite level of depth (children of childrens children of childrens children, ...)
    - verify your solution with `php artisan test`
    - do a `git commit && git push` after you are done or when the time limit is over

    Hints:
    - imagine a maximum of a few hundred menu items
    - partial or not working answers also get graded so make sure you commit what you have

    Sample response on GET /menu:
    ```json
    [
        {
            "id": 1,
            "name": "All events",
            "url": "/events",
            "parent_id": null,
            "created_at": "2021-04-27T15:35:15.000000Z",
            "updated_at": "2021-04-27T15:35:15.000000Z",
            "children": [
                {
                    "id": 2,
                    "name": "Laracon",
                    "url": "/events/laracon",
                    "parent_id": 1,
                    "created_at": "2021-04-27T15:35:15.000000Z",
                    "updated_at": "2021-04-27T15:35:15.000000Z",
                    "children": [
                        {
                            "id": 3,
                            "name": "Illuminate your knowledge of the laravel code base",
                            "url": "/events/laracon/workshops/illuminate",
                            "parent_id": 2,
                            "created_at": "2021-04-27T15:35:15.000000Z",
                            "updated_at": "2021-04-27T15:35:15.000000Z",
                            "children": []
                        },
                        {
                            "id": 4,
                            "name": "The new Eloquent - load more with less",
                            "url": "/events/laracon/workshops/eloquent",
                            "parent_id": 2,
                            "created_at": "2021-04-27T15:35:15.000000Z",
                            "updated_at": "2021-04-27T15:35:15.000000Z",
                            "children": []
                        }
                    ]
                },
                {
                    "id": 5,
                    "name": "Reactcon",
                    "url": "/events/reactcon",
                    "parent_id": 1,
                    "created_at": "2021-04-27T15:35:15.000000Z",
                    "updated_at": "2021-04-27T15:35:15.000000Z",
                    "children": [
                        {
                            "id": 6,
                            "name": "#NoClass pure functional programming",
                            "url": "/events/reactcon/workshops/noclass",
                            "parent_id": 5,
                            "created_at": "2021-04-27T15:35:15.000000Z",
                            "updated_at": "2021-04-27T15:35:15.000000Z",
                            "children": []
                        },
                        {
                            "id": 7,
                            "name": "Navigating the function jungle",
                            "url": "/events/reactcon/workshops/jungle",
                            "parent_id": 5,
                            "created_at": "2021-04-27T15:35:15.000000Z",
                            "updated_at": "2021-04-27T15:35:15.000000Z",
                            "children": []
                        }
                    ]
                }
            ]
        }
    ]
     */

    public function getMenuItems() {
        $menu_items =  MenuItem::all();
        $data = [];
        $k = 0;
        foreach($menu_items as $value){
           $children = [];
           $i = 0; 
           $menu_children = DB::table('menu_items')->where('parent_id', trim($value['id']))->get();
           foreach($menu_children as $value1){
            $children_1 = [];
            $i_1 = 0; 
            $menu_children_1 = DB::table('menu_items')->where('parent_id', trim($value['id']))->get();
            foreach($menu_children_1 as $value2){              
                $children_1[$i_1] = array(
                'id'=>$value2->id,
                'name'=>$value2->name,
                'url' => $value2->url,
                'parent_id' => $value2->parent_id,
                'created_at'=>$value2->created_at,
                'updated_at' => $value2->updated_at,
                'children' => $children_1
            );
            $i_1++;
            }
               $children[$i] = array(
                   'id'=>$value1->id,
                   'name'=>$value1->name,
                   'url' => $value1->url,
                   'parent_id' => $value1->parent_id,
                   'created_at'=>$value1->created_at,
                   'updated_at' => $value1->updated_at,
                   'children' => $children_1
               );
               $i++;
           }
           $data[$k] =  array(
            'id'=>$value->id,
            'name'=>$value->name,
            'url' => $value->url,
            'parent_id' => $value->parent_id,
            'created_at'=>$value->created_at,
            'updated_at' => $value->updated_at,
            'children' => $children);
           $k++;
        }
        echo "<pre>";
        echo json_encode($data, JSON_PRETTY_PRINT);
    }
}
