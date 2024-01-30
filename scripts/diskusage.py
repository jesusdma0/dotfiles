import shutil as sh

bytes_per_gb = 1024 * 1024 * 1024

(disk_total, disk_used, disk_free)= sh.disk_usage("/home/aether/")


print("TOTAL DISK SPACE")

for i in range(20):
    print("-", end="")


print("\n")
print("Disk Total Space: %.2f GB" % (float(disk_total)/bytes_per_gb))
print("Disk Used: %.2f GB" % (float(disk_used)/bytes_per_gb))
print("Disk Free: %.2f GB" % (float(disk_free)/bytes_per_gb))




