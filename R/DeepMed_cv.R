DeepMed_cv=function(y,d,m,x,method,hyper_grid,epochs,batch_size){
  
  if (method=="DNN"){set_random_seed(1)}
  
  if(is.vector(m)){
    mbin=1*(length(unique(m))==2 & min(m)==0 & max(m)==1)
    if (mbin==0){hyper=DeepMed_cont_cv(y,d,m,x,method,hyper_grid,epochs,batch_size)}
    if (mbin==1){hyper=DeepMed_bin_cv(y,d,m,x,method,hyper_grid,epochs,batch_size)}
  }
  if(is.matrix(m)){hyper=DeepMed_cont_cv(y,d,m,x,method,hyper_grid,epochs,batch_size)}
  
  return(hyper)
}


