 create or replace package oa_geometry
as
    
    function to_degrees(p_radians in number) return number;
    
    function to_radians(p_degrees in number) return number;

    function acos_degrees(p_x in number) return number;

    function asin_degrees(p_x in number) return number;

    function atan_degrees(p_x in number) return number;

    function cos_degrees(p_angle_degrees in number) return number;
    
    function sin_degrees(p_angle_degrees in number) return number;

    function tan_degrees(p_angle_degrees in number) return number;
    
    function cosecant_degrees
    (
        p_angle_degrees in number
    ) return number;
    
    function cosecant
    (
        p_angle_radians in number
    ) return number;
    
    --also called law of cosigns angle version
    function triangle_angle_SSS
    (
        p_x in number,
        p_y in number,
        p_side_opposite_angle in number
    ) return number;

    procedure solve_triangle_SSS
    (
        p_side_a   in number,
        p_side_b   in number,
        p_side_c   in number,
        p_angle_a out number,
        p_angle_b out number,
        p_angle_c out number
    );
    
    function triangle_side_SAS
    (
        p_side_b  in number,
        p_angle_a in number,
        p_side_c  in number
    ) return number;
    
    procedure solve_triangle_SAS
    (
        p_side_a   in number,
        p_angle_c  in number,
        p_side_b   in number,
        p_angle_a out number,
        p_angle_b out number,
        p_side_c  out number
    );
    
    procedure solve_triangle_ASA
    (
        p_angle_a    in number,
        p_side_c     in number,
        p_angle_b    in number,
        p_angle_c   out number,
        p_side_a    out number,
        p_side_b    out number
    );
    
    function right_triangle_hypotenuse
    (
        p_side_a in number,
        p_side_b in number
    ) return number;
    
    function right_triangle_side
    (
        p_side_a     in number,
        p_hypotenuse in number
    ) return number;
    
    function triangle_height
    (
        p_base      in number,
        p_a_degrees in number,
        p_b_degrees in number
    ) return number;
    
    function triangle_area
    (
        p_base   in number,
        p_height in number
    ) return number;
    
    function equilateral_triangle_area
    (
        p_side in number
    ) return number;
    
    function right_triangle_area
    (
        p_base   in number,
        p_height in number
     ) return number;
    
    function circumference
    (
        p_radius in number
    ) return number;
    
    function circle_area
    (
        p_radius in number
    ) return number;
    
    procedure solve_circle
    (
        p_radius         in number,
        p_circumference out number,
        p_area          out number
    );

    function sphere_volume
    (
        p_radius in number
    ) return number;
    
    function sphere_surface_area
    (
        p_radius in number
    ) return number;        
    
    procedure solve_sphere
    (
        p_radius         in number,
        p_circumference out number,
        p_surface_area  out number,
        p_volume        out number
    );
    
    function conic_slant_height
    (
        p_radius in number,
        p_height in number
    ) return number;
    
    function conic_lateral_area
    (
        p_radius       in number,
        p_slant_height in number
    ) return number;
    
    function conic_volume
    (
        p_radius in number,
        p_height in number
    ) return number;
        
    procedure solve_conic
    (
        p_radius         in number,
        p_height         in number,
        p_slant_height  out number,
        p_circumference out number,
        p_base_area     out number,
        p_lateral_area  out number,
        p_surface_area  out number,
        p_volume        out number
    );
          
    function cuboid_surface_area
    (
        p_base   in number, 
        p_depth  in number, 
        p_height in number    
    ) return number;
        
    function polygon_interior_angles
    (
        p_sides in number
    ) return number;
    
    function polygon_area
    (
        p_sides  in number,
        p_length in number
    ) return number;
    
    function polygon_circumradius
    (
        p_sides  in number,
        p_length in number
    ) return number;
    
    function polygon_inradius
    (
        p_sides  in number,
        p_length in number
    ) return number;

    procedure solve_polygon
    (
        p_sides           in number,
        p_length          in number,
        p_interior_angle out number,
        p_sum_angles     out number,
        p_area           out number,
        p_circumradius   out number,
        p_inradius       out number
    );

    function pyramid_slant_height
    (
        p_base   in number,
        p_height in number,
        p_sides  in number
    ) return number;

    function pyramid_edge_height
    (
        p_base   in number,
        p_height in number,
        p_sides  in number
    ) return number;

    
    function pyramid_edge_angles
    (
        p_height        in number,
        p_circumradius  in number,
        p_edge_height   in number
    ) return number;

    function pyramid_slant_angles
    (
        p_height       in number,
        p_inradius     in number,
        p_slant_height in number
    ) return number;


    function pyramid_vertex_angles
    (   
        p_base        in number,
        p_edge_height in number
    ) return number;
            
    function pyramid_side_area
    (
        p_base_length  in number,
        p_slant_height in number
    ) return number;

    function pyramid_surface_area
    (
        p_base_area in number,
        p_side_area in number,
        p_sides     in number
    ) return number;

    function pyramid_volume
    (   
        p_height    in number,
        p_base_area in number
    ) return number;

    procedure solve_pyramid
    (
        p_height        in number,
        p_base          in number,
        p_sides         in number,
        p_circumradius out number,
        p_inradius     out number,
        p_slant_height out number,
        p_edge_height  out number,
        p_slant_angle  out number,
        p_edge_angle   out number,
        p_vertex_angle out number,
        p_base_area    out number,
        p_side_area    out number,
        p_surface_area out number,
        p_volume       out number
    );

end oa_geometry;
