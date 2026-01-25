#! /usr/bin/env bash

set -e

echo "* Base Container *"

echo ""
echo "Setting environment variables"
source set_envars

export LOGFILE=$LOGFILES/base_container.log
rm --force $LOGFILE

echo ""
echo "Stopping any existing distrobox container $DBX_CONTAINER_NAME"
distrobox stop --yes $DBX_CONTAINER_NAME || true

echo "Recursively removing any existing distrobox home directory $DBX_CONTAINER_DIRECTORY"
rm --recursive --force $DBX_CONTAINER_DIRECTORY

echo "Setting container and image names"
echo "[$DBX_CONTAINER_NAME]" > distrobox.ini
echo "image=$DBX_CONTAINER_IMAGE" >> distrobox.ini
cat distrobox.ini.base >> distrobox.ini

echo ""
echo "Creating container - installing basic packages"
echo "will take some time."
/usr/bin/time distrobox assemble create --file distrobox.ini \
  >> $LOGFILE 2>&1

echo ""
echo "Copying \$HOME/.ssh into \$DBX_CONTAINER_DIRECTORY"
cp -rp $HOME/.ssh $DBX_CONTAINER_DIRECTORY

echo "Copying bash and vim config files into \$DBX_CONTAINER_DIRECTORY"
for i in \
  bash_aliases \
  vimrc-dark \
  vimrc-light \
  vimrc

do
  cp System/$i $DBX_CONTAINER_DIRECTORY/.$i

done

echo "Creating 'desktop' directories"
for i in \
  Documents \
  Downloads \
  Logfiles \
  Projects \
  .local/bin

do
  mkdir --parents $DBX_CONTAINER_DIRECTORY/$i

done

pushd ./System > /dev/null
  for i in \
    terminal_setup.sh \
    apt_system_upgrade.sh \
    apt_base_packages.sh \
    ollama.sh \
    aider.sh \
    apt_pkg_db_updates.sh

  do
    distrobox enter "$DBX_CONTAINER_NAME" -- ./$i

  done

popd

echo "* Finished Base Container *"
