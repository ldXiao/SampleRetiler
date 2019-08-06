//
// Created by Lind Xiao on 8/2/19.
//

#include <iostream>
#include <Eigen/Core>
#include <Eigen/geometry>
#include <igl/read_triangle_mesh.h>
//#include <sample_retiler/retiler.h>
//#include <sample_retiler/Mesh.h>
#include "Mesh.h"
int main(){
    std::cout << "headd"<< std::endl;
    Eigen::RowVector3d v(1,0,0);
    Eigen::RowVector3d w(0,1,0);
    std::cout<< v.cross(w)<< std::endl;
    Eigen::MatrixXd V;
    Eigen::MatrixXi F;
    igl::read_triangle_mesh("../data/3holes.obj", V, F);
    SR::Mesh a(V, F);

}