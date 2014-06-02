# ja_jp

- Set jp mirror in `/etc/apt/sources.list`
- Set `ja` locale as default
- Set `Asia/Tokyo` timezone
- Install some packages

## Requirements

- Ubuntu

## Role Variables

- `ja_jp_apt_ubuntu_uri`: mirror site
- `ja_jp_apt_ubuntu_components`: apt components
- `ja_jp_default_locale`: locale
- `ja_jp_timezone`: timezone
- `ja_jp_install_packages`: packages related to ja locale
- `ansible_distribution`: should be `Ubuntu`
- `ansible_distribution_release`: used in `sources.list`

## Dependencies

None.

## Example Playbook

    ---
    - hosts: all
      sudo: yes
	  roles:
      - znzj.ja_jp

## License

MIT License

## TODO

- Support Debian
