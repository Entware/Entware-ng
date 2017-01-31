# Use the default kernel version if the Makefile doesn't override it

LINUX_RELEASE?=1

LINUX_VERSION-2.6.36 = .4
LINUX_VERSION-2.6.32 = .68
LINUX_VERSION-2.6.22 = .19
LINUX_KERNEL_HASH-2.6.36.4 = 70d124743041974e1220fb39465627ded1df0fdd46da6cd74f6e3da414194d03
LINUX_KERNEL_HASH-2.6.32.68 = f56ca7f9ae41a80b37b42a9aa6367d6b054cde8a32ef3585a8b7b1fecd1c399e

ifdef KERNEL_PATCHVER
  LINUX_VERSION:=$(KERNEL_PATCHVER)$(strip $(LINUX_VERSION-$(KERNEL_PATCHVER)))
endif

split_version=$(subst ., ,$(1))
merge_version=$(subst $(space),.,$(1))
KERNEL_BASE=$(firstword $(subst -, ,$(LINUX_VERSION)))
KERNEL=$(call merge_version,$(wordlist 1,2,$(call split_version,$(KERNEL_BASE))))
KERNEL_PATCHVER ?= $(KERNEL)

# disable the md5sum check for unknown kernel versions
LINUX_KERNEL_HASH:=$(LINUX_KERNEL_HASH-$(strip $(LINUX_VERSION)))
LINUX_KERNEL_HASH?=x
