#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>
#include <libproc.h>
#include <libgen.h>
#include <spawn.h>

int main (int argc, char* argv[])
{
    char normalized_full_exe_path[PROC_PIDPATHINFO_MAXSIZE];
    char exe_folder[PROC_PIDPATHINFO_MAXSIZE];
    char contents_folder[PROC_PIDPATHINFO_MAXSIZE];
    char resources_folder[PROC_PIDPATHINFO_MAXSIZE+256];
    char bin_folder[PROC_PIDPATHINFO_MAXSIZE+256];
    char coqide_path[PROC_PIDPATHINFO_MAXSIZE+256];
    char value[PROC_PIDPATHINFO_MAXSIZE+256];

    // Get absolute path of executable
    // The path returned by proc_pidpath is already normalized, also with respect to symlinks
    if(proc_pidpath (getpid(), normalized_full_exe_path, sizeof(normalized_full_exe_path))<=0)
    {
        fprintf(stderr, "CoqIDE macOS wrapper: error in proc_pidpath\n");
        exit(1);
    }

    // Generate app base folders
    // e.g. /Applications/Coq-Platform-8.14~2022.01.app/Contents/Resources/bin
    strncpy(exe_folder, dirname(normalized_full_exe_path), sizeof(exe_folder)-1);
    // e.g. /Applications/Coq-Platform-8.14~2022.01.app/Contents
    strncpy(value, dirname(exe_folder), sizeof(value)-1);
    strncpy(contents_folder, dirname(value), sizeof(contents_folder)-1);
    // e.g. /Applications/Coq-Platform-8.14~2022.01.app/Contents/Resources
    strncpy(resources_folder, contents_folder, sizeof(resources_folder)-1);
    strncat(resources_folder, "/Resources", sizeof(resources_folder)-1);
    // e.g. /Applications/Coq-Platform-8.14~2022.01.app/Contents/Resources/bin
    strncpy(bin_folder, resources_folder, sizeof(bin_folder)-1);
    strncat(bin_folder, "/bin", sizeof(bin_folder)-1);

    // Generate CoqIDE exe path
    strncpy(coqide_path, bin_folder, sizeof(value)-1);
    strncat(coqide_path, "/coqide.exe", sizeof(coqide_path)-1);

    // Generate and set GDK_PIXBUF_MODULE_FILE value
    strncpy(value, resources_folder, sizeof(value)-1);
    strncat(value, "/lib/gdk-pixbuf-2.0/2.10.0/loaders/loaders.cache", sizeof(value)-1);
    setenv("GDK_PIXBUF_MODULE_FILE", value, 1);

    // Generate and set GTK_IM_MODULE_FILE value
    strncpy(value, resources_folder, sizeof(value)-1);
    strncat(value, "/lib/3.0/3.0.0/immodules.cache", sizeof(value)-1);
    setenv("GTK_IM_MODULE_FILE", value, 1);

    // Generate and set XDG_DATA_HOME value
    strncpy(value, resources_folder, sizeof(value)-1);
    strncat(value, "/share", sizeof(value)-1);
    setenv("XDG_DATA_HOME", value, 1);

    // Generate and set PATH value
    {
        char *path_old;
        size_t path_new_len;
        char *path_new;
        path_old = getenv("PATH");
        path_new_len = strlen(path_old)+strlen(bin_folder)+2;
        path_new = (char*)malloc(path_new_len);
        strncpy(path_new, bin_folder, path_new_len-1);
        strncat(path_new, ":", path_new_len-1);
        strncat(path_new, path_old, path_new_len-1);
        setenv("PATH", path_new, 1);
        free(path_new);
    }

    // call executable
    {
        char ** newargs = (char**)calloc(argc+1, sizeof(char*));
        for(int i=0; i<argc; i++) newargs[i] = argv[i];
        newargs[0] = coqide_path;
        newargs[argc] = 0;
        execv(coqide_path, newargs);
        // Execution transfers to CoqIDE here - if not it is an error
        fprintf(stderr, "execv failed calling %s\n", coqide_path);
        perror("Error message: ");
    }
}
