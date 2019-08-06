//
// Created by Lind Xiao on 8/5/19.
//

#ifndef SAMPLE_RETILER_MATH_H
#define SAMPLE_RETILER_MATH_H

#include <Eigen/Core>

namespace math {
    double distancePointPlane(
            const Eigen::RowVector3d &point,
            const Eigen::RowVector3d &normal,
            const double &plane_distance
    );

    // return the distance of a point from a plane specifiec by normal and distance to origin
    Eigen::RowVector3d projectPointOnPlane(
            const Eigen::RowVector3d &normal,
            const double &distance,
            const Eigen::RowVector3d &point
    );

    Eigen::RowVector3d projectPointOnLine(
            const Eigen::RowVector3d &point,
            const Eigen::RowVector3d &p1,
            const Eigen::RowVector3d &p2);

    class Ray3 {
    public:
        Ray3();                                                                                   // constructor
        Ray3(const Eigen::RowVector3d &origin, const Eigen::RowVector3d &direction, const double &_tmin,
             const double &_tmax = std::numeric_limits<double>::max());       // constructor

        Eigen::RowVector3d getPosition(double t) const; // returns origin+direction*t

        Eigen::RowVector3d o; // point in space where the ray originates from
        Eigen::RowVector3d d; // normalized direction of the ray
        double tmin, tmax; // valid ray segment
    };
}


#endif //SAMPLE_RETILER_MATH_H
