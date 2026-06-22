{ pkgs ? import <nixpkgs> {} }: 

pkgs.mkShell {

  packages = [
    (pkgs.python313.withPackages(p: with p; [

	  # Math
	  numpy
	  scipy
	  sympy
	  
	  #Data
	  pandas # tables
	  networkx # graphs

	  #DataViz
	  matplotlib
	  graphviz
	  seaborn

	  #NLP
	  nltk
	  textblob

	  #MacLearn
	  scikit-learn

	  # jupyter
	  jupyterlab

    ]))
  ];
}
