//
// Created by Lind Xiao on 8/5/19.
//

#include "Math.h"
#include <Eigen/geometry>

namespace math{
    double distancePointPlane(const Eigen::RowVector3d & point, const Eigen::RowVector3d & normal, const double & plane_distance) {
        // return the distance of a point from a plane specifiec by normal and distance to origin
        return point.dot(normal) + distance;
    }

    Eigen::RowVector3d projectPointOnPlane( const Eigen::RowVector3d &normal, const double &distance, const Eigen::RowVector3d &point )
    {
        return point - distancePointPlane( point, normal, distance )*normal;
    }

    Eigen::RowVector3d projectPointOnLine(
            const Eigen::RowVector3d &point,
            const Eigen::RowVector3d &p1,
            const Eigen::RowVector3d &p2 )
    {
        Eigen::RowVector3d direction = ( p2 - p1 ).normalized();

        return p1 + ( point - p1).dot(direction) * direction;
    }

    Ray3::Ray3() : tmin(0), tmax(std::numeric_limits<double>::max()) {}

    // constructor
    template<typename T>
    Ray3::Ray3(
            const Eigen::RowVector3d &origin,
            const Eigen::RowVector3d &direction,
            const double &_tmin,
            const double &_tmax
            ) : o(origin), d(direction), tmin(_tmin), tmax(_tmax) {}

    // returns origin+direction*t
    template<typename T>
    Eigen::RowVector3d Ray3::getPosition( double t )const
    {
        return o + d*t;
    }
}