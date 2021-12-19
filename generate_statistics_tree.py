import os
import numpy as np 

datasets = ['1000L1', '1000L3', '1000S1', '1000S3', '500L1', '500L3', '500S1', '500S3']
replicates = ['R0', 'R1', 'R2', 'R3', 'R4', 'R5', 'R6', 'R7', 'R8', 'R9']
models = ['RTL', 'magus', 'clustalo', 'mafft']

alignment_dict = {}

for dataset in datasets:
	alignment_dict[dataset] = {}
	os.chdir(dataset + "/tree_errors")
	for model in models:
		alignment_dict[dataset][model] = {}
		alignment_dict[dataset][model]['RF'] = []
		for replicate in replicates:
			tmp = np.genfromtxt(replicate + '.' + model + '.error.txt', delimiter=',', dtype=str)
			RF = float(tmp[5])
			alignment_dict[dataset][model]['RF'].append(RF)
	os.chdir('../../')


mean_std_dict = {}
for dataset in datasets:
	mean_std_dict[dataset] = {}
	for item in alignment_dict[dataset].items():
		mean_std_dict[dataset][item[0]] = {}
		mean_std_dict[dataset][item[0]]['RF'] = [ np.mean(item[1]['RF']), np.std(item[1]['RF']) ]

for x in alignment_dict['500S1'].items():
	print('SPFP')
	print(x[0], np.mean(x[1]['SPFP']), '+/-', np.std(x[1]['SPFP']))
	print('SPFN')
	print(x[0], np.mean(x[1]['SPFN']), '+/-', np.std(x[1]['SPFN']))
	print('TC')
	print(x[0], np.mean(x[1]['TC']), '+/-', np.std(x[1]['TC']))
