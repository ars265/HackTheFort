Rails.application.routes.draw do
  namespace :api, defaults: {format: 'json'} do
    namespace :v1 do
      resources :states
      resources :counties
      #resources :statistics
      resources :datas

      match 'statistics/districts',  to: 'statistics#get_districts', via: 'get'
      match 'statistics/schools',  to: 'statistics#get_schools', via: 'get'
      match 'statistics/istep_results_district',  to: 'statistics#get_istep_results_district', via: 'get'
      match 'statistics/istep_results_school',  to: 'statistics#get_istep_results_school', via: 'get'
      match 'statistics/istep_results_school_nonpublic',  to: 'statistics#get_istep_results_school_nonpublic', via: 'get'
      match 'statistics/grad_rate_corp',  to: 'statistics#get_grad_rate_corp', via: 'get'
      match 'statistics/grad_rate_school',  to: 'statistics#get_grad_rate_school', via: 'get'
      match 'statistics/corp_enrollment',  to: 'statistics#get_corp_enrollment', via: 'get'
      match 'statistics/school_enrollment',  to: 'statistics#get_school_enrollment', via: 'get'
      match 'statistics/corp_iread',  to: 'statistics#get_corp_iread', via: 'get'
      match 'statistics/school_iread',  to: 'statistics#get_school_iread', via: 'get'
      match 'statistics/school_attendance',  to: 'statistics#get_school_attendance', via: 'get'
      match 'statistics/corp_attendance',  to: 'statistics#get_corp_attendance', via: 'get'

    end
  end

  resources :statistics
end
