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
M_.fname = 'NKWR';
M_.dynare_version = '5.0';
oo_.dynare_version = '5.0';
options_.dynare_version = '5.0';
%
% Some global variables initialization
%
global_initialization;
M_.exo_names = cell(1,1);
M_.exo_names_tex = cell(1,1);
M_.exo_names_long = cell(1,1);
M_.exo_names(1) = {'e'};
M_.exo_names_tex(1) = {'e'};
M_.exo_names_long(1) = {'e'};
M_.endo_names = cell(12,1);
M_.endo_names_tex = cell(12,1);
M_.endo_names_long = cell(12,1);
M_.endo_names(1) = {'Y'};
M_.endo_names_tex(1) = {'Y'};
M_.endo_names_long(1) = {'Y'};
M_.endo_names(2) = {'I'};
M_.endo_names_tex(2) = {'I'};
M_.endo_names_long(2) = {'I'};
M_.endo_names(3) = {'C'};
M_.endo_names_tex(3) = {'C'};
M_.endo_names_long(3) = {'C'};
M_.endo_names(4) = {'R'};
M_.endo_names_tex(4) = {'R'};
M_.endo_names_long(4) = {'R'};
M_.endo_names(5) = {'K'};
M_.endo_names_tex(5) = {'K'};
M_.endo_names_long(5) = {'K'};
M_.endo_names(6) = {'W'};
M_.endo_names_tex(6) = {'W'};
M_.endo_names_long(6) = {'W'};
M_.endo_names(7) = {'L'};
M_.endo_names_tex(7) = {'L'};
M_.endo_names_long(7) = {'L'};
M_.endo_names(8) = {'PIW'};
M_.endo_names_tex(8) = {'PIW'};
M_.endo_names_long(8) = {'PIW'};
M_.endo_names(9) = {'P'};
M_.endo_names_tex(9) = {'P'};
M_.endo_names_long(9) = {'P'};
M_.endo_names(10) = {'PI'};
M_.endo_names_tex(10) = {'PI'};
M_.endo_names_long(10) = {'PI'};
M_.endo_names(11) = {'A'};
M_.endo_names_tex(11) = {'A'};
M_.endo_names_long(11) = {'A'};
M_.endo_names(12) = {'CM'};
M_.endo_names_tex(12) = {'CM'};
M_.endo_names_long(12) = {'CM'};
M_.endo_partitions = struct();
M_.param_names = cell(10,1);
M_.param_names_tex = cell(10,1);
M_.param_names_long = cell(10,1);
M_.param_names(1) = {'sigma'};
M_.param_names_tex(1) = {'sigma'};
M_.param_names_long(1) = {'sigma'};
M_.param_names(2) = {'phi'};
M_.param_names_tex(2) = {'phi'};
M_.param_names_long(2) = {'phi'};
M_.param_names(3) = {'alpha'};
M_.param_names_tex(3) = {'alpha'};
M_.param_names_long(3) = {'alpha'};
M_.param_names(4) = {'beta'};
M_.param_names_tex(4) = {'beta'};
M_.param_names_long(4) = {'beta'};
M_.param_names(5) = {'delta'};
M_.param_names_tex(5) = {'delta'};
M_.param_names_long(5) = {'delta'};
M_.param_names(6) = {'rhoa'};
M_.param_names_tex(6) = {'rhoa'};
M_.param_names_long(6) = {'rhoa'};
M_.param_names(7) = {'psi'};
M_.param_names_tex(7) = {'psi'};
M_.param_names_long(7) = {'psi'};
M_.param_names(8) = {'theta'};
M_.param_names_tex(8) = {'theta'};
M_.param_names_long(8) = {'theta'};
M_.param_names(9) = {'thetaW'};
M_.param_names_tex(9) = {'thetaW'};
M_.param_names_long(9) = {'thetaW'};
M_.param_names(10) = {'psiW'};
M_.param_names_tex(10) = {'psiW'};
M_.param_names_long(10) = {'psiW'};
M_.param_partitions = struct();
M_.exo_det_nbr = 0;
M_.exo_nbr = 1;
M_.endo_nbr = 12;
M_.param_nbr = 10;
M_.orig_endo_nbr = 12;
M_.aux_vars = [];
M_ = setup_solvers(M_);
M_.Sigma_e = zeros(1, 1);
M_.Correlation_matrix = eye(1, 1);
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
M_.orig_eq_nbr = 12;
M_.eq_nbr = 12;
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
 0 5 0;
 0 6 0;
 0 7 17;
 0 8 18;
 1 9 0;
 2 10 0;
 0 11 0;
 0 12 19;
 3 13 20;
 0 14 21;
 4 15 0;
 0 16 0;]';
M_.nstatic = 4;
M_.nfwrd   = 4;
M_.npred   = 3;
M_.nboth   = 1;
M_.nsfwrd   = 5;
M_.nspred   = 4;
M_.ndynamic   = 8;
M_.dynamic_tmp_nbr = [7; 0; 0; 0; ];
M_.model_local_variables_dynamic_tt_idxs = {
};
M_.equations_tags = {
  1 , 'name' , 'PIW' ;
  2 , 'name' , '2' ;
  3 , 'name' , '3' ;
  4 , 'name' , 'K' ;
  5 , 'name' , 'Y' ;
  6 , 'name' , '6' ;
  7 , 'name' , 'L' ;
  8 , 'name' , 'CM' ;
  9 , 'name' , 'PI' ;
  10 , 'name' , '10' ;
  11 , 'name' , '11' ;
  12 , 'name' , 'A' ;
};
M_.mapping.Y.eqidx = [5 6 7 11 ];
M_.mapping.I.eqidx = [4 11 ];
M_.mapping.C.eqidx = [1 3 11 ];
M_.mapping.R.eqidx = [3 6 8 ];
M_.mapping.K.eqidx = [4 5 6 ];
M_.mapping.W.eqidx = [1 2 7 8 ];
M_.mapping.L.eqidx = [1 5 7 ];
M_.mapping.PIW.eqidx = [1 2 ];
M_.mapping.P.eqidx = [1 3 9 10 ];
M_.mapping.PI.eqidx = [9 10 ];
M_.mapping.A.eqidx = [5 8 12 ];
M_.mapping.CM.eqidx = [8 9 ];
M_.mapping.e.eqidx = [12 ];
M_.static_and_dynamic_models_differ = false;
M_.has_external_function = false;
M_.state_var = [5 6 9 11 ];
M_.exo_names_orig_ord = [1:1];
M_.maximum_lag = 1;
M_.maximum_lead = 1;
M_.maximum_endo_lag = 1;
M_.maximum_endo_lead = 1;
oo_.steady_state = zeros(12, 1);
M_.maximum_exo_lag = 0;
M_.maximum_exo_lead = 0;
oo_.exo_steady_state = zeros(1, 1);
M_.params = NaN(10, 1);
M_.endo_trends = struct('deflator', cell(12, 1), 'log_deflator', cell(12, 1), 'growth_factor', cell(12, 1), 'log_growth_factor', cell(12, 1));
M_.NNZDerivatives = [43; 0; -1; ];
M_.static_tmp_nbr = [7; 0; 0; 0; ];
M_.model_local_variables_static_tt_idxs = {
};
M_.params(1) = 2;
sigma = M_.params(1);
M_.params(2) = 1.5;
phi = M_.params(2);
M_.params(3) = 0.35;
alpha = M_.params(3);
M_.params(4) = 0.985;
beta = M_.params(4);
M_.params(5) = 0.025;
delta = M_.params(5);
M_.params(6) = 0.95;
rhoa = M_.params(6);
M_.params(7) = 8;
psi = M_.params(7);
M_.params(8) = 0.75;
theta = M_.params(8);
M_.params(9) = 0.75;
thetaW = M_.params(9);
M_.params(10) = 21;
psiW = M_.params(10);
model_diagnostics(M_,options_,oo_);
steady;
oo_.dr.eigval = check(M_,options_,oo_);
%
% SHOCKS instructions
%
M_.exo_det_length = 0;
M_.Sigma_e(1, 1) = (0.01)^2;
options_.irf = 40;
options_.noprint = true;
options_.order = 2;
var_list_ = {'Y';'I';'C';'R';'K';'W';'L';'PI';'A'};
[info, oo_, options_, M_] = stoch_simul(M_, options_, oo_, var_list_);


oo_.time = toc(tic0);
disp(['Total computing time : ' dynsec2hms(oo_.time) ]);
if ~exist([M_.dname filesep 'Output'],'dir')
    mkdir(M_.dname,'Output');
end
save([M_.dname filesep 'Output' filesep 'NKWR_results.mat'], 'oo_', 'M_', 'options_');
if exist('estim_params_', 'var') == 1
  save([M_.dname filesep 'Output' filesep 'NKWR_results.mat'], 'estim_params_', '-append');
end
if exist('bayestopt_', 'var') == 1
  save([M_.dname filesep 'Output' filesep 'NKWR_results.mat'], 'bayestopt_', '-append');
end
if exist('dataset_', 'var') == 1
  save([M_.dname filesep 'Output' filesep 'NKWR_results.mat'], 'dataset_', '-append');
end
if exist('estimation_info', 'var') == 1
  save([M_.dname filesep 'Output' filesep 'NKWR_results.mat'], 'estimation_info', '-append');
end
if exist('dataset_info', 'var') == 1
  save([M_.dname filesep 'Output' filesep 'NKWR_results.mat'], 'dataset_info', '-append');
end
if exist('oo_recursive_', 'var') == 1
  save([M_.dname filesep 'Output' filesep 'NKWR_results.mat'], 'oo_recursive_', '-append');
end
if ~isempty(lastwarn)
  disp('Note: warning(s) encountered in MATLAB/Octave code')
end
