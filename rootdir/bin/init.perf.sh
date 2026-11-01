#!/vendor/bin/sh
#
# SPDX-License-Identifier: Apache-2.0
#

write_irq_affinity() {
    # Arguments:
    # $1 = irq name
    # $2 = cpu id
    irq_dir="$(dirname /proc/irq/*/$1)"
    [ -d "$irq_dir" ] && echo "$2" > "${irq_dir}/smp_affinity_list"
}

# IRQ tuning
# kgsl_3d0_irq -> gold CPU 6
# msm_drm -> gold CPU 7
write_irq_affinity kgsl_3d0_irq 6
write_irq_affinity msm_drm 7
