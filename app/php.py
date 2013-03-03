from fabric.api import *
import sys, os, os.path, datetime, shutil, platform, subprocess, re

@task
def composer_for52():
	os.chdir('..')

	for fname in ['/../autoload', 'autoload_classmap', 'autoload_namespaces', 'autoload_real', 'ClassLoader']:
		src = 'vendor/composer/' + fname + '.php'
		dest = 'vendor/composer/' + fname + '.php.tmp'	
		
		print 'patch: ' + src

		if os.path.exists(dest):
			os.unlink(dest)
		with open(dest, 'w') as fout:
			with open(src) as f:
				for line in f:
					line = line.replace('__DIR__', 'dirname(__FILE__)')
					line = line.replace('namespace Composer\Autoload;', '//namespace Composer\Autoload;')
					line = line.replace('\Composer\Autoload\ClassLoader', 'ClassLoader')
					line = line.replace('Composer\Autoload\ClassLoader', 'ClassLoader')
					line = line.replace("spl_autoload_register(array($this, 'loadClass'), true, $prepend);", "spl_autoload_register(array($this, 'loadClass'));")
					fout.write(line)
		os.rename(dest, src)
