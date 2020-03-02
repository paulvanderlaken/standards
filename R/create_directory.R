create_directory = function(cd = getwd()) {
  
  cat('\n')
  cat('Creating default directory layout')
  cat('\n')
  cat('\n')
  
  append_path = function(...){
    return(paste(..., sep = '/'))
  }
  
  cat('Creating folders')
  cat('\n')
  
  folders = c(
    'data',
    'data/raw',
    'data/processed',
    'docs',
    'resources',
    'models',
    'src'
  )
  
  folders_full = append_path(cd, folders)
  
  for (i in seq_along(folders_full)) {
    folder = folders[i]
    folder_full = folders_full[i]
    if (!dir.exists(folder_full)){
      dir.create(path = folder_full)
    } else {
      cat('Folder', folder, 'already exists')
      cat('\n')
    }
  }
  
  cat('\n')
  cat('Creating files')
  cat('\n')
  
  files = c(
    'README.MD',
    'TODO.MD',
    '.gitignore.txt',
    'requirements.txt',
    'main.R'
  )
  
  files_full = append_path(cd, files)
  
  for (file in files){
    if (! file.exists(file)) {
      file.create(path = append_path(cd, file), overwrite = FALSE)
    } else {
      cat('File', file, 'already exists')
      cat('\n')
    }
  }
  
  return(invisible(NULL))
}
