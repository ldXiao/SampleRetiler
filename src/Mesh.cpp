// Copyright (c) David Koerner - https://github.com/dkoerner/retiler - see README.md for details
/*---------------------------------------------------------------------

A very straightforward trianglemesh class

----------------------------------------------------------------------*/
#include "Mesh.h"
#include <map>
#include <algorithm>
#include <Eigen/Geometry>
#include <Eigen/Core>

namespace SR
{
    //
    // constructor
    //
    Mesh::Mesh()
    {
    }

    //
    // destructor
    //
    Mesh::~Mesh()
    {
        for( std::vector<Vertex*>::iterator it = vertices.begin(); it != vertices.end(); ++it )
            delete *it;
        for( std::vector<Triangle*>::iterator it = triangles.begin(); it != triangles.end(); ++it )
            delete *it;

        vertices.clear();
        triangles.clear();
    }

    //
    // constructor
    //
    Mesh::Mesh( const Eigen::MatrixX3d & _vertices, const Eigen::MatrixX3i & _faces )
    {
        for( int i =0; i < _vertices.rows(); ++i)
        {
            // create a vertex and
            // add it to the list of vertices
            vertices.push_back( new Vertex( _vertices.row(i) ) );
        }

        std::vector<Vertex *> temp;

        temp.resize( vertices.size() );

        // resolve the _faces to vertex references
        int currentIndex = 0;
        for( std::vector<Vertex*>::iterator it = vertices.begin(); it != vertices.end(); ++it, ++currentIndex )
            temp[currentIndex] = *it;


        // add triangles
        for( int j=0; j < _faces.rows();++j )
        {
            int i1 = _faces(j,0);
            int i2 = _faces(j,1);
            int i3 = _faces(j,2);

            // createadd triangle
            triangles.push_back( new Triangle( temp[i1], temp[i2], temp[i3] ) );
        }
    }


    //
    //
    //
    void Mesh::computeVertexIndicees( void )
    {
        // resolve the vertex references to _faces
        int currentIndex = 0;
        for( std::vector<Vertex*>::iterator it = vertices.begin(); it != vertices.end(); ++it, ++currentIndex )
            (*it)->index = currentIndex;
    }


    //
    //
    //
    void Mesh::computeNormals( void )
    {
        // reset vertex normals
        for( std::vector<Vertex *>::iterator it = vertices.begin(); it != vertices.end(); ++it )
            (*it)->normal = Eigen::RowVector3d();

        // compute face normals
        for( std::vector<Triangle *>::iterator it = triangles.begin(); it != triangles.end(); ++it )
        {
            //compute face normal
            Eigen::RowVector3d faceNormal =  (((*it)->v1->position - (*it)->v0->position).cross( (*it)->v2->position - (*it)->v0->position )).normalized();

            // add face normal to all vertices which are touched by the triangle
            (*it)->v0->normal += faceNormal;
            (*it)->v1->normal += faceNormal;
            (*it)->v2->normal += faceNormal;
        }

        // normalize vertex normals
        for( std::vector<Vertex *>::iterator it = vertices.begin(); it != vertices.end(); ++it )
            (*it)->normal.normalize();

    }


    void Mesh::assertManifold()
    {
        std::map<Vertex*, std::vector<Triangle *> > triRing;

        // for each triangle
        for( std::vector<Triangle *>::iterator tit = triangles.begin(); tit != triangles.end(); ++tit )
        {
            Triangle *t = *tit;

            for( size_t i=0; i<3; ++i )
                triRing[ t->v[i] ].push_back( t );
        }

        for( std::map<Vertex*, std::vector<Triangle *> >::iterator it = triRing.begin(); it != triRing.end(); ++it )
        {
            Vertex *v = it->first;

            if( it->second.size() < 3 )
            {
                printf( "degenerated vertex detected (referenced by less then 3 triangles) -> removed\n" );

                // remove all triangles referencing v
                for( std::vector<Triangle *>::iterator tit = it->second.begin(); tit != it->second.end(); ++tit )
                {
                    Triangle *t = *tit;

                    // remove triangle from triangleRings from all reference vertices
                    for( size_t i =0;i<3; ++i )
                        if( t->v[i] != v )
                        {
                            triRing[t->v[i]].erase( std::find( triRing[t->v[i]].begin(), triRing[t->v[i]].end(), t ) );
                            // TODO: check if new degenerate vertices are created
                        }

                    // remove the triangle
                    removeTriangle( t );
                }

                // remove v itsself
                removeVertex( v );
            }
        }


    }

    void Mesh::removeVertex( Vertex *v )
    {
        std::vector<Vertex *>::iterator it = std::find( vertices.begin(), vertices.end(), v );

        if( it != vertices.end() )
            vertices.erase( it );

        delete v;
    }

    void Mesh::removeTriangle( Triangle *t )
    {
        std::vector<Triangle *>::iterator it = std::find( triangles.begin(), triangles.end(), t );

        if( it != triangles.end() )
            triangles.erase( it );

        delete t;
    }
}
