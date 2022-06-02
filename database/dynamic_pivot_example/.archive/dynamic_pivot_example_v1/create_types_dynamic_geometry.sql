create or replace type dynamic_geometry as object(
    item_id   number,
    item_name varchar2(100),
    item_type varchar2(100),
    item_json clob
    ) not final;
/

create or replace type dynamic_geometry_table as table of dynamic_geometry;
/

create or replace type dynamic_geometry_circle under dynamic_geometry(
    radius        number,
    circumference number,
    area          number,
    color         varchar2(100)
);
/
create or replace type dynamic_geometry_triangle under dynamic_geometry(
    a_degrees number,
    b_degrees number,
    c_degrees number,
    a_side    number,
    b_side    number,
    c_side    number,
    area      number
);
/
create or replace type dynamic_geometry_square under dynamic_geometry(
    side number,
    area number
);
/

create or replace type dynamic_geometry_rectangle under dynamic_geometry(
    length number,
    width  number,
    area   number,
    color  varchar2(100)
);
/


create or replace type dynamic_geometry_polygon under dynamic_geometry(
    sides               number,
    side_length         number,
    interior_angles     number,
    sum_interior_angles number,
    area                number,
    shading             varchar2(100)
);
/
create or replace type dynamic_geometry_line under dynamic_geometry(
    y_intercept number,
    slope       number,
    equation    varchar2(100)
);
/