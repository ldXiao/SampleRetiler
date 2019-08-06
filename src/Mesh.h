// Copyright (c) David Koerner - https://github.com/dkoerner/retiler - see README.md for details
/*---------------------------------------------------------------------

A very straightforward trianglemesh class

----------------------------------------------------------------------*/
#pragma once

#include <vector>
#include <set>
#include <list>
#include <Eigen/Core>

namespace SR
{
    ///
    /// \brief holds vertices and triangles which reference the first ones - very simple and not usefull for complicated algorithms
    ///
    class Mesh
    {
    public:
        struct Triangle;

        struct Vertex
        {
            Vertex( const Eigen::RowVector3d &_position ) : position(_position)
            {
            }

            Eigen::RowVector3d              position;
            Eigen::RowVector3d                normal;
            Eigen::RowVector3d                 color;

            int                         index;  // index into the vertex list
            int                           tag;  // often used
        };

        struct Triangle
        {
            Triangle( Vertex *_v0, Vertex *_v1, Vertex *_v2 )
            {
                v0 = _v0; v1 = _v1; v2 = _v2;
            }

            union
            {
                struct
                {
                    Vertex *v0, *v1, *v2;
                };
                Vertex *v[3];
            };

            bool tagged;
        };


        Mesh();           // constructor
        ~Mesh();          // destructor
        Mesh( const Eigen::MatrixX3d & _vertices, const Eigen::MatrixX3i & _faces );           // constructor


        void computeNormals( void );
        void computeVertexIndicees( void );

        void assertManifold();

        void removeVertex( Vertex *v );
        void removeTriangle( Triangle *t );

        //private:


        std::vector<Vertex *>                vertices;
        std::vector<Triangle *>             triangles;


    };
}