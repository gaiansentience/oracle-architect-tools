set serveroutput on;
declare
    p_height       number;
    p_base         number;
    p_sides        number;
    l_circumradius number;
    l_inradius     number;
    l_slant_height number;
    l_edge_height  number;
    l_slant_angle  number;
    l_edge_angle   number;
    l_vertex_angle number;
    l_base_area    number;
    l_side_area    number;
    l_surface_area number;
    l_volume       number;
begin

    p_height := 15;
    p_base   := 12;
    p_sides  := 5;
    
    test_geometry.solve_pyramid
    (
        p_height       => p_height,
        p_base         => p_base,
        p_sides        => p_sides,
        p_circumradius => l_circumradius,
        p_inradius     => l_inradius,
        p_slant_height => l_slant_height,
        p_edge_height  => l_edge_height,
        p_slant_angle  => l_slant_angle,
        p_edge_angle   => l_edge_angle,
        p_vertex_angle => l_vertex_angle,
        p_base_area    => l_base_area,
        p_side_area    => l_side_area,
        p_surface_area => l_surface_area,
        p_volume       => l_volume
    );
    
    dbms_output.put_line('p_height = ' || p_height);
    dbms_output.put_line('p_base = ' || p_base);
    dbms_output.put_line('p_sides = ' || p_sides);
    
    dbms_output.put_line('l_circumradius = ' || l_circumradius);
    dbms_output.put_line('l_inradius = ' || l_inradius);
    dbms_output.put_line('l_slant_height = ' || l_slant_height);
    dbms_output.put_line('l_edge_height = ' || l_edge_height);
    dbms_output.put_line('l_slant_angle = ' || l_slant_angle);
    dbms_output.put_line('l_edge_angle = ' || l_edge_angle);
    dbms_output.put_line('l_vertex_angle = ' || l_vertex_angle);
    dbms_output.put_line('l_base_area = ' || l_base_area);
    dbms_output.put_line('l_side_area = ' || l_side_area);
    dbms_output.put_line('l_surface_area = ' || l_surface_area);
    dbms_output.put_line('l_volume = ' || l_volume);    
    
end;
