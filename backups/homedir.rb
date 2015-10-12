# encoding: utf-8

Model.new(:homedir, 'Description for homedir') do
  archive :homedir_archive do |archive|
    archive.add "/home/deviant_ruin/"

    # Exclude all dotfiles as these should be in the dotfiles git repo.
    archive.exclude "/home/deviant_ruin/.*"
    
    # Exclude the desktop and download directories, nothing important 
    # should ever by there
    archive.exclude "/home/deviant_ruin/Desktop"
    archive.exclude "/home/deviant_ruin/Downloads"
  end

  store_with Local do |local|
    local.path       = "/backup/"
    local.keep       = 7            # Retain 1 week worth of daily backups
  end

  compress_with Bzip2 do |compression|
    compression.level = 9
  end

  encrypt_with GPG do |encryption|
    encryption.keys = {}
    encryption.keys['deviant.ruin@gmail.com'] = <<-KEY
-----BEGIN PGP PUBLIC KEY BLOCK-----
Version: GnuPG v1

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
ucZo1hy8KXnD1cyV62dQPX94
=YJNm
-----END PGP PUBLIC KEY BLOCK-----
    KEY
    encryption.recipients = 'deviant.ruin@gmail.com'
  end
end
