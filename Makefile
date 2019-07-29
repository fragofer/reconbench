default:
	mkdir -p ann/lib
	mkdir -p OpenMesh/lib
	mkdir -p modeling/lib
	mkdir -p sampler/lib
	mkdir -p evaluator/lib
	(cd ann; make linux-g++)
	(cd OpenMesh; make)
	(cd pbrt/src; make)
	(cd registration/trimesh2; make)
	(cd registration/tps_alignment/src; make)
	(cd modeling; make)
	(cd sampler; make)
	(cd evaluator; make)
	(cd recon/poisson; make)

clean:
	(cd ann; make realclean)
	(cd OpenMesh; make clean)
	(cd pbrt/src; make clean)
	(cd registration/trimesh2; make spotless)
	(cd registration/tps_alignment/src; make clean)
	(cd modeling; make clean)
	(cd sampler; make clean)
	(cd evaluator; make clean)
    (cd recon/poisson; make clean)