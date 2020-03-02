% CSCC11 - Introduction to Machine Learning, Fall 2018, Assignment 1
% D. Fleet, B. Chan
%
% [w] = FitPolynomialRegression(K, x, y)
%
% This function finds optimal solves for the weights (and bias) for polynomial 
% regression given training data (x,y)
%
% The polynomial model is
%       y_{i} = sum_{k = 0}^{K} w_{k} * x_{i}^{k}
% where y_{i} is an observed value at x_{i}
%
% K - the degree of the polynomial, ranging from 1 to 10 
% x - 1-column vector that contains training inputs
% y - 1-column vector which contains training outputs for inputs x
%
% w - vector of length K+1  with estimated monomial coefficients 
%     for monomials x^0, x^1, ... , x^K
%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% TO DO: Complete this function to set up the regression
%        problem and solve for the weights w that correspond
%        to the least-squares estimate that fits the observed
%        data.
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% COMPLETE THIS TEXT BOX:
%
% Code written by:
% Subagan Kamaleswaran
% Student Name: Subagan Kamaleswaran
% Student number: 1002163712
% UtorID: kamales8
%
% I hereby certify that the work contained here is my own
%
%
% Subagan Kamaleswaran
% (sign with your name)
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function [w] = FitPolynomialRegression(K, x, y)
    B = fliplr(vander(x)); %make x into an infinite matrix
    B(:,K+2:end) = []; %cut the matrix at K+2 becuase we start from w0
    w = B\y; 