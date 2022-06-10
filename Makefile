eval: link
	cue eval .

VENDOR = cue.mod/pkg
STORE_ROOT = cue.mod/.cuemod
VENDOR_ROOT = $(VENDOR)

link:
	rm -rf ./cue.mod/pkg
	mkdir -p ./cue.mod/pkg/x.io
	ln -srf $(STORE_ROOT)/x.io/a@v0.0.0/$(VENDOR)/x.io/a $(VENDOR_ROOT)/x.io/a
	ln -srf $(STORE_ROOT)/x.io/b@v1.0.0/$(VENDOR)/x.io/b $(VENDOR_ROOT)/x.io/b
	mkdir -p $(VENDOR_ROOT)/x.io/a/$(VENDOR)/x.io
	ln -srf $(STORE_ROOT)/x.io/b@v0.1.0/$(VENDOR)/x.io/b $(VENDOR_ROOT)/x.io/a/$(VENDOR)/x.io/b
