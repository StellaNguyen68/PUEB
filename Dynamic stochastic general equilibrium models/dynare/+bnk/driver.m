%
% Status : main Dynare file
%
% Warning : this file is generated automatically by Dynare
%           from model file (.mod)

if isoctave || matlab_ver_less_than('8.6')
    clear all
else
    clearvars -global
    clear_persistent_variables(fileparts(which('dynare')), false)
end
tic0 = tic;
% Define global variables.
global M_ options_ oo_ estim_params_ bayestopt_ dataset_ dataset_info estimation_info ys0_ ex0_
options_ = [];
M_.fname = 'bnk';
M_.dynare_version = '5.0';
oo_.dynare_version = '5.0';
options_.dynare_version = '5.0';
%
% Some global variables initialization
%
global_initialization;
M_.exo_names = cell(2,1);
M_.exo_names_tex = cell(2,1);
M_.exo_names_long = cell(2,1);
M_.exo_names(1) = {'epsv'};
M_.exo_names_tex(1) = {'epsv'};
M_.exo_names_long(1) = {'epsv'};
M_.exo_names(2) = {'epsa'};
M_.exo_names_tex(2) = {'epsa'};
M_.exo_names_long(2) = {'epsa'};
M_.endo_names = cell(14,1);
M_.endo_names_tex = cell(14,1);
M_.endo_names_long = cell(14,1);
M_.endo_names(1) = {'pi'};
M_.endo_names_tex(1) = {'pi'};
M_.endo_names_long(1) = {'pi'};
M_.endo_names(2) = {'gap'};
M_.endo_names_tex(2) = {'gap'};
M_.endo_names_long(2) = {'gap'};
M_.endo_names(3) = {'y'};
M_.endo_names_tex(3) = {'y'};
M_.endo_names_long(3) = {'y'};
M_.endo_names(4) = {'yn'};
M_.endo_names_tex(4) = {'yn'};
M_.endo_names_long(4) = {'yn'};
M_.endo_names(5) = {'i'};
M_.endo_names_tex(5) = {'i'};
M_.endo_names_long(5) = {'i'};
M_.endo_names(6) = {'rn'};
M_.endo_names_tex(6) = {'rn'};
M_.endo_names_long(6) = {'rn'};
M_.endo_names(7) = {'M'};
M_.endo_names_tex(7) = {'M'};
M_.endo_names_long(7) = {'M'};
M_.endo_names(8) = {'n'};
M_.endo_names_tex(8) = {'n'};
M_.endo_names_long(8) = {'n'};
M_.endo_names(9) = {'v'};
M_.endo_names_tex(9) = {'v'};
M_.endo_names_long(9) = {'v'};
M_.endo_names(10) = {'a'};
M_.endo_names_tex(10) = {'a'};
M_.endo_names_long(10) = {'a'};
M_.endo_names(11) = {'pia'};
M_.endo_names_tex(11) = {'pia'};
M_.endo_names_long(11) = {'pia'};
M_.endo_names(12) = {'ia'};
M_.endo_names_tex(12) = {'ia'};
M_.endo_names_long(12) = {'ia'};
M_.endo_names(13) = {'ra'};
M_.endo_names_tex(13) = {'ra'};
M_.endo_names_long(13) = {'ra'};
M_.endo_names(14) = {'MA'};
M_.endo_names_tex(14) = {'MA'};
M_.endo_names_long(14) = {'MA'};
M_.endo_partitions = struct();
M_.param_names = cell(11,1);
M_.param_names_tex = cell(11,1);
M_.param_names_long = cell(11,1);
M_.param_names(1) = {'alfa'};
M_.param_names_tex(1) = {'alfa'};
M_.param_names_long(1) = {'alfa'};
M_.param_names(2) = {'bet'};
M_.param_names_tex(2) = {'bet'};
M_.param_names_long(2) = {'bet'};
M_.param_names(3) = {'epsi'};
M_.param_names_tex(3) = {'epsi'};
M_.param_names_long(3) = {'epsi'};
M_.param_names(4) = {'phi'};
M_.param_names_tex(4) = {'phi'};
M_.param_names_long(4) = {'phi'};
M_.param_names(5) = {'phipi'};
M_.param_names_tex(5) = {'phipi'};
M_.param_names_long(5) = {'phipi'};
M_.param_names(6) = {'phigap'};
M_.param_names_tex(6) = {'phigap'};
M_.param_names_long(6) = {'phigap'};
M_.param_names(7) = {'rhoa'};
M_.param_names_tex(7) = {'rhoa'};
M_.param_names_long(7) = {'rhoa'};
M_.param_names(8) = {'rhov'};
M_.param_names_tex(8) = {'rhov'};
M_.param_names_long(8) = {'rhov'};
M_.param_names(9) = {'gam'};
M_.param_names_tex(9) = {'gam'};
M_.param_names_long(9) = {'gam'};
M_.param_names(10) = {'theta'};
M_.param_names_tex(10) = {'theta'};
M_.param_names_long(10) = {'theta'};
M_.param_names(11) = {'eta'};
M_.param_names_tex(11) = {'eta'};
M_.param_names_long(11) = {'eta'};
M_.param_partitions = struct();
M_.exo_det_nbr = 0;
M_.exo_nbr = 2;
M_.endo_nbr = 14;
M_.param_nbr = 11;
M_.orig_endo_nbr = 14;
M_.aux_vars = [];
M_ = setup_solvers(M_);
M_.Sigma_e = zeros(2, 2);
M_.Correlation_matrix = eye(2, 2);
M_.H = 0;
M_.Correlation_matrix_ME = 1;
M_.sigma_e_is_diagonal = true;
M_.det_shocks = [];
M_.surprise_shocks = [];
M_.heteroskedastic_shocks.Qvalue_orig = [];
M_.heteroskedastic_shocks.Qscale_orig = [];
options_.linear = true;
options_.block = false;
options_.bytecode = false;
options_.use_dll = false;
M_.nonzero_hessian_eqs = [];
M_.hessian_eq_zero = isempty(M_.nonzero_hessian_eqs);
M_.orig_eq_nbr = 14;
M_.eq_nbr = 14;
M_.ramsey_eq_nbr = 0;
M_.set_auxiliary_variables = exist(['./+' M_.fname '/set_auxiliary_variables.m'], 'file') == 2;
M_.epilogue_names = {};
M_.epilogue_var_list_ = {};
M_.orig_maximum_endo_lag = 1;
M_.orig_maximum_endo_lead = 1;
M_.orig_maximum_exo_lag = 0;
M_.orig_maximum_exo_lead = 0;
M_.orig_maximum_exo_det_lag = 0;
M_.orig_maximum_exo_det_lead = 0;
M_.orig_maximum_lag = 1;
M_.orig_maximum_lead = 1;
M_.orig_maximum_lag_with_diffs_expanded = 1;
M_.lead_lag_incidence = [
 0 5 19;
 0 6 20;
 1 7 0;
 0 8 0;
 2 9 0;
 0 10 0;
 0 11 0;
 0 12 0;
 3 13 0;
 4 14 0;
 0 15 21;
 0 16 0;
 0 17 0;
 0 18 0;]';
M_.nstatic = 7;
M_.nfwrd   = 3;
M_.npred   = 4;
M_.nboth   = 0;
M_.nsfwrd   = 3;
M_.nspred   = 4;
M_.ndynamic   = 7;
M_.dynamic_tmp_nbr = [3; 0; 0; 0; ];
M_.model_local_variables_dynamic_tt_idxs = {
};
M_.equations_tags = {
  1 , 'name' , 'pi' ;
  2 , 'name' , 'gap' ;
  3 , 'name' , '3' ;
  4 , 'name' , 'yn' ;
  5 , 'name' , 'rn' ;
  6 , 'name' , 'i' ;
  7 , 'name' , 'M' ;
  8 , 'name' , 'y' ;
  9 , 'name' , 'v' ;
  10 , 'name' , 'a' ;
  11 , 'name' , 'pia' ;
  12 , 'name' , 'ia' ;
  13 , 'name' , 'ra' ;
  14 , 'name' , 'MA' ;
};
M_.mapping.pi.eqidx = [1 2 6 7 11 ];
M_.mapping.gap.eqidx = [1 2 3 6 ];
M_.mapping.y.eqidx = [3 7 8 ];
M_.mapping.yn.eqidx = [3 4 ];
M_.mapping.i.eqidx = [2 6 7 12 ];
M_.mapping.rn.eqidx = [2 5 ];
M_.mapping.M.eqidx = [7 14 ];
M_.mapping.n.eqidx = [8 ];
M_.mapping.v.eqidx = [6 9 ];
M_.mapping.a.eqidx = [4 5 8 10 ];
M_.mapping.pia.eqidx = [11 13 ];
M_.mapping.ia.eqidx = [12 13 ];
M_.mapping.ra.eqidx = [13 ];
M_.mapping.MA.eqidx = [14 ];
M_.mapping.epsv.eqidx = [9 ];
M_.mapping.epsa.eqidx = [10 ];
M_.static_and_dynamic_models_differ = false;
M_.has_external_function = false;
M_.state_var = [3 5 9 10 ];
M_.exo_names_orig_ord = [1:2];
M_.maximum_lag = 1;
M_.maximum_lead = 1;
M_.maximum_endo_lag = 1;
M_.maximum_endo_lead = 1;
oo_.steady_state = zeros(14, 1);
M_.maximum_exo_lag = 0;
M_.maximum_exo_lead = 0;
oo_.exo_steady_state = zeros(2, 1);
M_.params = NaN(11, 1);
M_.endo_trends = struct('deflator', cell(14, 1), 'log_deflator', cell(14, 1), 'growth_factor', cell(14, 1), 'log_growth_factor', cell(14, 1));
M_.NNZDerivatives = [43; 0; -1; ];
M_.static_tmp_nbr = [3; 0; 0; 0; ];
M_.model_local_variables_static_tt_idxs = {
};
M_.params(1) = 0.3333333333333333;
alfa = M_.params(1);
M_.params(2) = 0.99;
bet = M_.params(2);
M_.params(3) = 6;
epsi = M_.params(3);
M_.params(4) = 1;
phi = M_.params(4);
M_.params(5) = 1.5;
phipi = M_.params(5);
M_.params(6) = 0.125;
phigap = M_.params(6);
M_.params(7) = 0.9;
rhoa = M_.params(7);
M_.params(8) = 0.5;
rhov = M_.params(8);
M_.params(9) = 1;
gam = M_.params(9);
M_.params(10) = 0.6666666666666666;
theta = M_.params(10);
M_.params(11) = 4;
eta = M_.params(11);
steady;
oo_.dr.eigval = check(M_,options_,oo_);
%
% SHOCKS instructions
%
M_.exo_det_length = 0;
M_.Sigma_e(1, 1) = (0.25)^2;
model_diagnostics(M_,options_,oo_);
options_.irf = 13;
options_.noprint = true;
options_.order = 2;
var_list_ = {'gap';'pia';'yn';'y';'n';'ia';'ra';'MA';'v';'a'};
[info, oo_, options_, M_] = stoch_simul(M_, options_, oo_, var_list_);


oo_.time = toc(tic0);
disp(['Total computing time : ' dynsec2hms(oo_.time) ]);
if ~exist([M_.dname filesep 'Output'],'dir')
    mkdir(M_.dname,'Output');
end
save([M_.dname filesep 'Output' filesep 'bnk_results.mat'], 'oo_', 'M_', 'options_');
if exist('estim_params_', 'var') == 1
  save([M_.dname filesep 'Output' filesep 'bnk_results.mat'], 'estim_params_', '-append');
end
if exist('bayestopt_', 'var') == 1
  save([M_.dname filesep 'Output' filesep 'bnk_results.mat'], 'bayestopt_', '-append');
end
if exist('dataset_', 'var') == 1
  save([M_.dname filesep 'Output' filesep 'bnk_results.mat'], 'dataset_', '-append');
end
if exist('estimation_info', 'var') == 1
  save([M_.dname filesep 'Output' filesep 'bnk_results.mat'], 'estimation_info', '-append');
end
if exist('dataset_info', 'var') == 1
  save([M_.dname filesep 'Output' filesep 'bnk_results.mat'], 'dataset_info', '-append');
end
if exist('oo_recursive_', 'var') == 1
  save([M_.dname filesep 'Output' filesep 'bnk_results.mat'], 'oo_recursive_', '-append');
end
if ~isempty(lastwarn)
  disp('Note: warning(s) encountered in MATLAB/Octave code')
end
