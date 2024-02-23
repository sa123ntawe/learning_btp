using app.learning01 from '../db/learning01';

Service category {
    entity Categories as projection on learning01.Categories;
    entity Courses as projection on learning01.Courses;
}