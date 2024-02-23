namespace app.learning01;
using{ Language, managed} from '@sap/cds/common';

type String50: String(50);

entity Categories{
    key id : UUID;
    name   : String(50);
    description: String(100);
    Courses:Association to many Courses on Courses.category=$self;
}
entity Courses : managed {
    key category: Association to Categories;
    key course_id: UUID;
    course_name: String(100);
    price:String50;
    language:Language;
    
}